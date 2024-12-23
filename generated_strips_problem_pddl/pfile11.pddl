(define (problem transport-packages)
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
    s6 - location
  )

  (:init
    (at driver1 s6)
    (at driver2 s0)
    (at truck1 s0)
    (empty truck1)
    (at truck2 s2)
    (empty truck2)
    (at truck3 s2)
    (empty truck3)
    (at package1 s6)
    (at package2 s2)
    (at package3 s3)
    (at package4 s0)
    (at package5 s5)
    (at package6 s5)
    (link s0 s1)
    (link s1 s2)
    (link s2 s3)
    (link s3 s4)
    (link s4 s5)
    (link s5 s6)
    (path s0 s1)
    (path s1 s2)
    (path s2 s3)
    (path s3 s4)
    (path s4 s5)
    (path s5 s6)
  )

  (:goal
    (and
      (at driver2 s4)
      (at truck2 s4)
      (at package1 s6)
      (at package2 s3)
      (at package3 s4)
      (at package4 s6)
      (at package5 s1)
    )
  )
)