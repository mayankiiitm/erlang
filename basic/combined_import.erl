-module (combined_import).
-export ([height_to_mph/1]).
-import (drop, [fall_velocity/1]).
-import (convert, [mps_to_mph/1]).
height_to_mph(Height)->mps_to_mph(fall_velocity(Height)).
