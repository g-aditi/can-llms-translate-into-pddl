(define (problem transport-packages)
  (:domain driverlog)
  (:objects
    driver1 - driver
    driver2 - driver
    driver3 - driver
    driver4 - driver
    truck1 - truck
    truck2 - truck
    truck3 - truck
    truck4 - truck
    package1 - package
    package2 - package
    package3 - package
    package4 - package
    package5 - package
    package6 - package
    package7 - package
    package8 - package
    s1 - location
    s2 - location
    s3 - location
    s5 - location
    s8 - location
    s9 - location
    s10 - location
    s11 - location
  )

  (:init
    (at driver1 s8)
    (at driver2 s5)
    (at driver3 s5)
    (at driver4 s10)
    (at truck1 s3)
    (at truck2 s9)
    (at truck3 s3)
    (at truck4 s6)
    (empty truck1)
    (empty truck2)
    (empty truck3)
    (empty truck4)
    (at package1 s3)
    (at package2 s2)
    (at package3 s8)
    (at package4 s11)
    (at package5 s1)
    (at package6 s8)
    (at package7 s9)
    (at package8 s10)
    (link s1 s2)
    (link s2 s3)
    (link s3 s5)
    (link s5 s8)
    (link s8 s9)
    (link s9 s10)
    (link s10 s11)
    (link s3 s11)
    (link s5 s11)
  )

  (:goal
    (and (at driver3 s11)
         (at truck3 s11)
         (at package1 s11)
         (at package2 s11)
         (at package3 s11)
         (at package4 s11)
         (at package5 s11)
         (at package6 s11)
         (at package7 s11)
         (at package8 s11)
    )
  )
)