(define (problem driverlog-problem)
  (:domain driverlog)

  (:objects
    driver1 driver2 driver3 - driver
    truck1 truck2 truck3 - truck
    package1 package2 package3 package4 package5 - obj
    s0 s1 s2 - location
  )

  (:init
    (at driver1 s2)
    (at driver2 s2)
    (at driver3 s1)
    (at truck1 s0)
    (at truck2 s1)
    (at truck3 s1)
    (empty truck1)
    (empty truck2)
    (empty truck3)
    (at package1 s1)
    (at package2 s1)
    (at package3 s0)
    (at package4 s1)
    (at package5 s1)
    (link s0 s1)
    (link s1 s2)
    (path s1 s2)
  )

  (:goal
    (and
      (at driver1 s1)
      (at driver2 s0)
      (at truck1 s0)
      (at truck2 s0)
      (at truck3 s2)
      (at package1 s2)
      (at package2 s1)
      (at package3 s0)
      (at package4 s1)
      (at package5 s1)
    )
  )

)