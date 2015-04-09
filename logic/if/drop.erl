-module (drop).
-export ([fall_velocity/2]).
fall_velocity(Planemo,Distance) when Distance>=0->
	G=case Planemo of
		earth->9.8;
		mars->1.6;
		moon->3.71
	end,
	Velocity=math:sqrt(2*G*Distance),
	if
		Velocity == 0 -> 'stable';
		Velocity < 5 -> 'slow';
		Velocity >= 5, Velocity < 10 -> 'moving';
		Velocity >= 10, Velocity < 20 -> 'fast';
		Velocity >= 20 -> 'speedy'
	end.