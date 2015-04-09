-module (combined).
-export ([height_to_mph/1]).
height_to_mph(Height)->convert:mps_to_mph(drop:fall_velocity(Height)).