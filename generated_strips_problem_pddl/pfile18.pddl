(define (problem driverlog-problem)
  (:domain driverlog)

  (:objects
    driver1 - driver
    driver2 - driver
    driver3 - driver
    driver4 - driver
    driver5 - driver
    truck1 - truck
    truck2 - truck
    truck3 - truck
    truck4 - truck
    truck5 - truck
    package1 - obj
    package2 - obj
    package4 - obj
    package5 - obj
    package6 - obj
    package7 - obj
    package9 - obj
    package10 - obj
    package11 - obj
    package12 - obj
    package13 - obj
    package14 - obj
    package15 - obj
    package16 - obj
    package17 - obj
    package18 - obj
    package19 - obj
    s1 - location
    s2 - location
    s3 - location
    s4 - location
    s6 - location
    s7 - location
    s8 - location
    s9 - location
    s10 - location
    s11 - location
    s12 - location
    s13 - location
    s15 - location
    s16 - location
    s17 - location
    s18 - location
    s0 - location
  )

  (:init
    (at driver1 s11)
    (at driver2 s6)
    (at driver3 s1)
    (at driver4 s2)
    (at driver5 s4)
    (at truck1 s12)
    (at truck2 s3)
    (at truck3 s8)
    (at truck4 s8)
    (at truck5 s2)
    (in driver1 truck1)
    (in driver2 truck2)
    (in driver3 truck3)
    (in driver4 truck5)
    (in driver5 truck4)
    (empty truck1)
    (empty truck2)
    (empty truck3)
    (empty truck4)
    (empty truck5)
    (at package1 s1)
    (at package2 s7)
    (at package4 s10)
    (at package5 s15)
    (at package6 s7)
    (at package7 s10)
    (at package9 s7)
    (at package10 s10)
    (at package11 s13)
    (at package12 s12)
    (at package13 s12)
    (at package14 s15)
    (at package15 s18)
    (at package16 s8)
    (at package17 s16)
    (at package18 s3)
    (at package19 s2)
    (link s11 s1)
    (link s1 s2)
    (link s2 s3)
    (link s3 s4)
    (link s4 s6)
    (link s6 s7)
    (link s7 s8)
    (link s8 s9)
    (link s9 s10)
    (link s10 s11)
    (link s11 s12)
    (link s12 s13)
    (link s13 s14)
    (link s14 s15)
    (link s15 s16)
    (link s16 s17)
    (link s17 s18)
    (link s18 s0)
    (link s0 s1)
    (link s1 s5)
    (link s5 s9)
  )

  (:goal
    (and
      (at driver1 s1)
      (at driver5 s9)
      (at truck1 s17)
      (at truck2 s0)
      (at truck3 s3)
      (at truck5 s9)
    )
  )
)