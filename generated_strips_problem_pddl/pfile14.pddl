(define (problem driverlog-problem)
  (:domain driverlog)
  
  (:objects
    driver1 - driver
    driver2 - driver
    driver3 - driver
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
    s6 - location
    s8 - location
    s9 - location
  )
  
  (:init
    (at driver1 s9)
    (at driver2 s2)
    (at driver3 s2)
    (at truck1 s2)
    (at truck2 s1)
    (at truck3 s8)
    (in truck2 package5)
    (in truck3 package6)
    (empty truck1)
    (empty truck2)
    (empty truck3)
    (at package1 s5)
    (at package2 s5)
    (at package3 s9)
    (at package4 s3)
    (at package6 s4)
    (link s2 s1)
    (link s2 s6)
    (link s1 s3)
    (link s3 s4)
    (link s4 s5)
    (link s5 s6)
    (link s8 s9)
    (link s9 s5)
  )
  
  (:goal
    (and (at driver3 s1)
         (at truck1 s6)
         (at truck3 s3)
         (at package1 s0)
         (at package2 s0)
         (at package3 s4)
         (at package4 s4)
         (at package5 s3)
         (at package6 s5)
    )
  )
)