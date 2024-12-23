(define (problem myproblem)
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
    s0 - location
    s1 - location
    s2 - location
    s3 - location
    s4 - location
    s5 - location
    s6 - location
    s8 - location
    s9 - location
    s10 - location
    s11 - location
    s12 - location
    s13 - location
    s14 - location
    s15 - location
  )

  (:init 
    (at driver1 s10)
    (at driver2 s13)
    (at driver3 s10)
    (at driver4 s9)
    (at driver5 s2)
    (at truck1 s2)
    (at truck2 s8)
    (in truck1 package1)
    (at truck3 s12)
    (at truck4 s3)
    (in truck2 package2)
    (at truck5 s10)
    (in truck3 package3)
    (in truck4 package4)
    (in truck5 package5)
    (at package6 s1)
    (at package7 s0)
    (at package8 s12)
    (at package9 s12)
    (at package10 s5)
    (at package11 s1)
    (at package12 s9)
    (at package13 s2)
    (at package14 s15)
    (at package15 s14)
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
    (link s13 s14)
    (link s14 s15)
    (path s0 s1)
    (path s1 s2)
    (path s2 s3)
    (path s3 s4)
    (path s4 s5)
    (path s5 s6)
    (path s6 s7)
    (path s7 s8)
    (path s8 s9)
    (path s9 s10)
    (path s10 s11)
    (path s11 s12)
    (path s12 s13)
    (path s13 s14)
    (path s14 s15)
    (empty truck1)
    (empty truck2)
    (empty truck3)
    (empty truck4)
    (empty truck5)
  )

  (:goal 
    (and (at driver2 s1)
         (at driver4 s1)
         (at driver5 s1)
         (at truck1 s14)
         (at truck2 s1)
         (at truck3 s5)
         (at truck4 s8)
         (at truck5 s6)
         (at package1 s1)
         (at package2 s15)
         (at package3 s10)
         (at package4 s3)
         (at package5 s6)
         (at package6 s8)
         (at package7 s0)
         (at package8 s13)
         (at package9 s1)
         (at package10 s11)
         (at package11 s8)
         (at package12 s6)
         (at package13 s10)
         (at package14 s1)
         (at package15 s4)
    )
  )
)