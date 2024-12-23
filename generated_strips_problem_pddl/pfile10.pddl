(define (problem driverlog-problem)
  (:domain driverlog)

  (:objects
    driver1 - driver
    driver2 - driver
    truck1 - truck
    truck2 - truck
    truck3 - truck
    package1 - obj
    package2 - obj
    package3 - obj
    package4 - obj
    package5 - obj
    package6 - obj
    s0 - location
    s1 - location
    s2 - location
    s3 - location
    s4 - location
    s5 - location
  )

  (:init
    (at driver1 s4)
    (at driver2 s0)
    (at truck1 s0)
    (at truck2 s4)
    (at truck3 s5)
    (in package1 truck2)
    (in package2 truck2)
    (in package3 truck2)
    (in package4 truck2)
    (in package5 truck3)
    (in package6 truck3)
    (empty truck1)
    (empty truck2)
    (empty truck3)
    (link s0 s1)
    (link s0 s2)
    (link s0 s3)
    (link s0 s4)
    (link s0 s5)
    (link s1 s2)
    (link s1 s3)
    (link s1 s4)
    (link s1 s5)
    (link s2 s3)
    (link s2 s5)
    (link s3 s4)
    (link s3 s5)
    (link s4 s5)
  )

  (:goal
    (and (at driver1 s1)
         (at driver2 s0)
         (at package1 s5)
         (at package2 s1)
         (at package3 s5)
         (at package4 s1)
         (at package5 s3)
         (at package6 s2)
    )
  )
)