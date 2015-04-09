-module (drop).
-export ([fall_velocity/2]).
fall_velocity(Planemo, Distance) when Distance>=0 ->
	G=case Planemo of
		earth ->
			9.8;
		mars ->
			3.71;
		moon ->
			1.6
	end,
	math:sqrt(2*G*Distance).