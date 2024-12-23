(define (problem delivery-problem)
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
    s7 - location
    s9 - location
  )

  (:init
    (at driver1 s1)
    (at driver2 s3)
    (at truck1 s7)
    (at truck2 s9)
    (at truck3 s2)
    (empty truck1)
    (empty truck2)
    (empty truck3)
    (in package1 truck1)
    (in package2 truck1)
    (in package3 truck2)
    (in package4 driver1)
    (in package5 driver2)
    (in package6 truck3)
    (link s1 s4)
    (link s3 s9)
    (link s7 s5)
    (link s2 s0)
    (link s9 s5)
    (path s1 s4)
    (path s3 s9)
    (path s2 s0)
  )

  (:goal
    (and
      (at driver1 s4)
      (at driver2 s9)
      (at truck2 s5)
      (at truck3 s0)
      (at package1 s2)
      (at package2 s2)
      (at package3 s9)
      (at package4 s1)
      (at package5 s0)
      (at package6 s2)
    )
  )
)