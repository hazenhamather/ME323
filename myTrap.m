%% myTrap function
% param: a - left endpoint
% param: b - right endpoint
% returns: T - trapezoidal evaluation
%**************************************
function [ T ] = myTrap( a, b )

fa = ex4Fun(a);
fb = ex4Fun(b);

T = ((fa + fb)/2)*(b-a);

end

