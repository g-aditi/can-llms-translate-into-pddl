(define (problem transport-problem)
  (:domain driverlog)
  
  (:objects 
    driver1 driver - driver
    driver2 driver - driver
    truck1 truck - truck
    truck2 truck - truck
    truck3 truck - truck
    package1 package - obj
    package2 package - obj
    package3 package - obj
    package4 package - obj
    package5 package - obj
    package6 package - obj
    s0 location - location
    s1 location - location
    s2 location - location
    s3 location - location
    s4 location - location
  )
  
  (:init 
    (at driver1 s4)
    (at driver2 s1)
    (at truck1 s2)
    (at truck2 s0)
    (at truck3 s3)
    (in package1 truck1)
    (in package2 truck2)
    (in package3 truck3)
    (in package4 truck2)
    (in package5 truck2)
    (in package6 truck2)
    (link s0 s1)
    (link s0 s2)
    (link s0 s3)
    (link s1 s2)
    (link s1 s3)
    (link s2 s3)
    (link s2 s4)
    (link s3 s4)
  )
  
  (:goal 
    (and (at driver1 s3)
         (at driver2 s4)
         (at truck1 s3)
         (at truck2 s3)
         (at truck3 s3)
         (in package1 truck1)
         (in package3 truck1)
         (at package2 s2)
         (at package3 s1)
         (at package4 s0)
         (at package5 s1)
         (at package6 s1)
    )
  )
)