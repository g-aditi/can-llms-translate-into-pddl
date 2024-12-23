from transformers import pipeline
import torch
import os

torch.cuda.empty_cache()

framework_model_id = "meta-llama/Meta-Llama-3.1-8B-Instruct"
pipe = pipeline(
        "text-generation",
        model=framework_model_id,
        model_kwargs={"torch_dtype": torch.float16},
        device="cuda",
    )

messages = [
        {
            "role": "system",
            "content": f'''
            You are a knowledgeable assistant specializing in AI planning languages. Given the PDDL domain.pddl and 
            problem.pddl files, your task is to translate the problem.pddl file into an explicit natural language description. 
            Explicit descriptions map directly to the PDDL propositions, listing objects, their states, and relationships. Follow 
            these instructions:
            1. Use the PDDL predicates in the problem.pddl to create precise statements about the initial state, goal state, and metrics.
            2. Do not leave out any details. For instance:
                a. (at driver1 s2) should become: "Driver1 is located at S2."
                b. (= (time-to-walk s1 p1-0) 43) should become: "The time to walk from S1 to P1-0 is 43."
            3. Ensure clarity by grouping the translation into the following sections and putting it in one single paragraph:
                a. Objects and Types
                b. Initial State
                c. Goal State
                d. Metrics
            Here are the provided PDDL files:
            domain.pddl: 
            (define (domain driverlog)
  (:requirements :typing :fluents) 
  (:types           location locatable - object
		driver truck obj - locatable)

  (:predicates 
		(at ?obj - locatable ?loc - location)
		(in ?obj1 - obj ?obj - truck)
		(driving ?d - driver ?v - truck)
		(link ?x ?y - location) (path ?x ?y - location)
		(empty ?v - truck)
)
  (:functions (time-to-walk ?l1 ?l2 - location)
		(time-to-drive ?l1 ?l2 - location)
		(driven)
		(walked))


(:action LOAD-TRUCK
  :parameters
   (?obj - obj
    ?truck - truck
    ?loc - location)
  :precondition
   (and (at ?truck ?loc) (at ?obj ?loc))
  :effect
   (and (not (at ?obj ?loc)) (in ?obj ?truck)))

(:action UNLOAD-TRUCK
  :parameters
   (?obj - obj
    ?truck - truck
    ?loc - location)
  :precondition
   (and (at ?truck ?loc) (in ?obj ?truck))
  :effect
   (and (not (in ?obj ?truck)) (at ?obj ?loc)))

(:action BOARD-TRUCK
  :parameters
   (?driver - driver
    ?truck - truck
    ?loc - location)
  :precondition
   (and (at ?truck ?loc) (at ?driver ?loc) (empty ?truck))
  :effect
   (and (not (at ?driver ?loc)) (driving ?driver ?truck) (not (empty ?truck))))

(:action DISEMBARK-TRUCK
  :parameters
   (?driver - driver
    ?truck - truck
    ?loc - location)
  :precondition
   (and (at ?truck ?loc) (driving ?driver ?truck))
  :effect
   (and (not (driving ?driver ?truck)) (at ?driver ?loc) (empty ?truck)))

(:action DRIVE-TRUCK
  :parameters
   (?truck - truck
    ?loc-from - location
    ?loc-to - location
    ?driver - driver)
  :precondition
   (and (at ?truck ?loc-from)
   (driving ?driver ?truck) (link ?loc-from ?loc-to))
  :effect
   (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to)
		(increase (driven) (time-to-drive ?loc-from ?loc-to))))

(:action WALK
  :parameters
   (?driver - driver
    ?loc-from - location
    ?loc-to - location)
  :precondition
   (and (at ?driver ?loc-from) (path ?loc-from ?loc-to))
  :effect
   (and (not (at ?driver ?loc-from)) (at ?driver ?loc-to)
	(increase (walked) (time-to-walk ?loc-from ?loc-to))))

 
)

problem.pddl:

(define (problem DLOG-2-2-2)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	s0 - location
	s1 - location
	s2 - location
	p1-0 - location
	p1-2 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at package1 s0)
	(at package2 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 43)
	(= (time-to-walk p1-0 s1) 43)
	(= (time-to-walk s0 p1-0) 80)
	(= (time-to-walk p1-0 s0) 80)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 29)
	(= (time-to-walk p1-2 s1) 29)
	(= (time-to-walk s2 p1-2) 79)
	(= (time-to-walk p1-2 s2) 79)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 70)
	(= (time-to-drive s1 s0) 70)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 47)
	(= (time-to-drive s2 s0) 47)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 24)
	(= (time-to-drive s1 s2) 24)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at truck1 s1)
	(at package1 s0)
	(at package2 s0)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 1  (driven))) (* 3  (walked))))

)

            '''
},
]

outputs = pipe(
        messages,
        max_new_tokens=512,
        do_sample=True,
    )

assistant_response = outputs[0]["generated_text"]
print(assistant_response)

torch.cuda.empty_cache()