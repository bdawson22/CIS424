

#5
fun Map (F, nil) = nil
	| Map (F, x::xr) = F(x)::Map(F, xr)

#6
Exception emptyList
fun reduce(F, nil) = raise emptyList
	| reduce(F, [a]) = a
	| reduce(F, x::xr) = F(x, Reduce(F, xr));
reduce(fn(x, a) => if x < a then x else a, [1.0, 2.0, 3.0, 4.0]);

#7
fun filter(p, nil) = nil
	| filter(p, x::xr) = 
	if p(x) then x::filter(p, xr)
	else filter(p, xr);
filter(fn x => x >= 2.0 andalso x <= 3.0, [1.5, 2.25, 2.9, 2.3, 3.1, 2.6]);
