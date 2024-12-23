(define (problem delivery-problem)
  (:domain driverlog)

  (:objects 
    s0 s1 s2 - location
    driver1 driver2 - driver
    truck1 truck2 - truck
    package1 package2 package3 - obj
  )

  (:init 
    (at driver1 s0)
    (at driver2 s0)
    (at truck1 s0)
    (at truck2 s1)
    (at package1 s1)
    (at package2 s1)
    (at package3 s1)
    (in package2 truck2)
    (in package3 truck2)
    (in package1 truck2)
    (empty truck1)
    (link s0 s1)
    (link s1 s2)
  )

  (:goal 
    (and (at driver1 s1)
         (at driver2 s1)
         (at truck1 s2)
         (at truck2 s0)
         (at package1 s0)
         (at package2 s2)
         (at package3 s0)
    )
  )
)