(define (problem transport-packages)
  (:domain driverlog)

  (:objects
    driver1 - driver
    driver2 - driver
    driver3 - driver
    driver4 - driver
    driver5 - driver
    driver6 - driver
    driver7 - driver
    driver8 - driver
    truck1 - truck
    truck2 - truck
    truck3 - truck
    truck4 - truck
    truck5 - truck
    truck6 - truck
    package1 - obj
    package2 - obj
    package3 - obj
    package4 - obj
    package5 - obj
    package6 - obj
    package7 - obj
    package8 - obj
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
    package20 - obj
    package21 - obj
    package22 - obj
    package23 - obj
    package24 - obj
    package25 - obj
    s13 - location
    s6 - location
    s15 - location
    s5 - location
    s8 - location
    s18 - location
    s16 - location
  )

  (:init
    (at driver1 s13)
    (at driver2 s6)
    (at driver3 s15)
    (at driver5 s6)
    (at driver6 s5)
    (at driver7 s8)
    (at driver4?)
    (at driver8?)
    (at truck1 s13)
    (at truck2 s8)
    (at truck3 s5)
    (at truck4 s18)
    (at truck5 s16)
    (at truck6 s16)
    (empty truck1)
    (empty truck2)
    (empty truck3)
    (empty truck4)
    (empty truck5)
    (empty truck6)
    (at package1 s14)
    (at package2 s17)
    (at package3 s14)
    (at package4 s17)
    (at package5 s14)
    (at package6 s17)
    (at package7 s14)
    (at package8 s17)
    (at package9 s14)
    (at package10 s17)
    (at package11 s14)
    (at package12 s17)
    (at package13 s14)
    (at package14 s17)
    (at package15 s14)
    (at package16 s17)
    (at package17 s14)
    (at package18 s17)
    (at package19 s14)
    (at package20 s17)
    (at package21 s14)
    (at package22 s17)
    (at package23 s14)
    (at package24 s17)
    (at package25 s14)
    (link s13 s14)
    (link s14 s15)
    (link s14 s6)
    (link s6 s17)
    (link s6 s13)
    (link s13 s18)
    (link s18 s5)
    (link s5 s8)
    (link s8 s16)
    (link s16 s15)
    (link s15 s17)
    (link s17 s6)
  )

  (:goal
    (and
      (at driver1 s13)
      (at driver2 s6)
      (at driver3 s15)
      (at driver5 s6)
      (at driver6 s5)
      (at driver7 s8)
      (at package1 s14)
      (at package2 s17)
      (at package3 s14)
      (at package4 s17)
      (at package5 s14)
      (at package6 s17)
      (at package7 s14)
      (at package8 s17)
      (at package9 s14)
      (at package10 s17)
      (at package11 s14)
      (at package12 s17)
      (at package13 s14)
      (at package14 s17)
      (at package15 s14)
      (at package16 s17)
      (at package17 s14)
      (at package18 s17)
      (at package19 s14)
      (at package20 s17)
      (at package21 s14)
      (at package22 s17)
      (at package23 s14)
      (at package24 s17)
      (at package25 s14)
    )
  )
)