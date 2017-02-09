%% myMid function 
% param: a - left endpoint
% Param: b - right endpoint
% returns: M - midpoint between left and right endpoints
%*******************************************************
function [ M ] = myMid( a, b )

i = (a + b)/2;

f = ex4Fun(i);

M = f * (b-a);
end

