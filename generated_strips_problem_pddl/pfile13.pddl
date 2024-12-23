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
    s6 - location
    s7 - location
    s8 - location
    s9 - location
    s10 - location
    s11 - location
  )

  (:init
    (at driver1 s0)
    (at driver2 s9)
    (at truck1 s3)
    (at truck2 s9)
    (at truck3 s2)
    (empty truck1)
    (empty truck2)
    (empty truck3)
    (at package1 s4)
    (at package2 s6)
    (at package3 s5)
    (at package4 s6)
    (at package5 s0)
    (at package6 s2)
    (link s0 s1)
    (link s0 s2)
    (link s0 s3)
    (link s0 s4)
    (link s0 s5)
    (link s0 s6)
    (link s0 s7)
    (link s0 s8)
    (link s0 s9)
    (link s0 s10)
    (link s0 s11)
    (link s1 s2)
    (link s1 s3)
    (link s1 s4)
    (link s1 s5)
    (link s1 s6)
    (link s1 s7)
    (link s1 s8)
    (link s1 s9)
    (link s1 s10)
    (link s1 s11)
    (link s2 s3)
    (link s2 s4)
    (link s2 s5)
    (link s2 s6)
    (link s2 s7)
    (link s2 s8)
    (link s2 s9)
    (link s2 s10)
    (link s2 s11)
    (link s3 s4)
    (link s3 s5)
    (link s3 s6)
    (link s3 s7)
    (link s3 s8)
    (link s3 s9)
    (link s3 s10)
    (link s3 s11)
    (link s4 s5)
    (link s4 s6)
    (link s4 s7)
    (link s4 s8)
    (link s4 s9)
    (link s4 s10)
    (link s4 s11)
    (link s5 s6)
    (link s5 s7)
    (link s5 s8)
    (link s5 s9)
    (link s5 s10)
    (link s5 s11)
    (link s6 s7)
    (link s6 s8)
    (link s6 s9)
    (link s6 s10)
    (link s6 s11)
    (link s7 s8)
    (link s7 s9)
    (link s7 s10)
    (link s7 s11)
    (link s8 s9)
    (link s8 s10)
    (link s8 s11)
    (link s9 s10)
    (link s9 s11)
    (link s10 s11)
  )

  (:goal
    (and (at driver1 s11)
         (at truck2 s8)
         (at truck3 s4)
         (at package1 s5)
         (at package2 s0)
         (at package3 s4)
         (at package4 s0)
         (at package6 s5)
    )
  )

)