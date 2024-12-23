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
    s0 - location
    s1 - location
    s2 - location
    s3 - location
    s4 - location
    s5 - location
    s6 - location
    s7 - location
    s8 - location
    s10 - location
    s11 - location
    s12 - location
    s13 - location
    s16 - location
    s19 - location
  )

  (:objects 
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s10 s11 s12 s13 s16 s19 - locatable
  )

  (:objects 
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s10 s11 s12 s13 s16 s19 - location
  )

  (:init 
    (at driver1 s3)
    (at driver2 s11)
    (at driver3 s8)
    (at driver4 s12)
    (at driver5 s3)
    (at truck1 s4)
    (at truck2 s8)
    (at truck3 s19)
    (at truck4 s0)
    (at truck5 s6)
    (at package1 s19)
    (at package2 s17)
    (at package3 s20)
    (at package4 s14)
    (at package5 s15)
    (at package6 s0)
    (at package7 s7)
    (at package8 s9)
    (at package9 s5)
    (at package10 s13)
    (at package11 s2)
    (at package12 s4)
    (at package13 s1)
    (at package14 s18)
    (at package15 s6)
    (at package16 s10)
    (at package17 s8)
    (at package18 s12)
    (at package19 s11)
    (at package20 s16)
    (at package21 s3)
    (at package22 s0)
    (at package23 s5)
    (at package24 s9)
    (at package25 s15)
    (in package6 s0)
    (in package7 s7)
    (in package8 s9)
    (in package9 s5)
    (in package10 s13)
    (in package11 s2)
    (in package12 s4)
    (in package13 s1)
    (in package14 s18)
    (in package15 s6)
    (in package16 s10)
    (in package17 s8)
    (in package18 s12)
    (in package19 s11)
    (in package20 s16)
    (in package21 s3)
    (in package22 s0)
    (in package23 s5)
    (in package24 s9)
    (in package25 s15)
    (in package1 s19)
    (in package2 s17)
    (in package3 s20)
    (in package4 s14)
    (in package5 s15)
    (empty truck1)
    (empty truck2)
    (empty truck3)
    (empty truck4)
    (empty truck5)
    (link s0 s1)
    (link s1 s2)
    (link s2 s3)
    (link s3 s4)
    (link s4 s5)
    (link s5 s6)
    (link s6 s7)
    (link s7 s8)
    (link s8 s9)
    (link s9 s10)
    (link s10 s11)
    (link s11 s12)
    (link s12 s13)
    (link s13 s16)
   