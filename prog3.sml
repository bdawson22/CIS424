#CIS424 Project 3
#Brett Dawson, Dorothy Zhao

#1
fun secondElement(L) = hd(tl(L));

#2
fun removeThird(L) = 
	if L = [] then []
	else 	
		hd(L)::tl(tl(tl(L)));
		
#3
fun maxMin(a, b, c) =
	let val array = [];
in 
if (a < b) then
	if (b < c) then
		a::c::array
	else if (c < a) then
		c::b::array
	else 	
		a::b::array
else if (b < a) then
	if (c < b) then
		c::a::array
	else if (a < c) then
		b::c::array
		else
		b::a::array
else 	
	a::b::array
end;

#4
fun flip (x::y::z) = y::x::flip z
	| flip _ = [];

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
