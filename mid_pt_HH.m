%*************************
% Hazen Hamather
% Section 02
%*************************

function [ M ] = mid_pt_HH( a,b,N )

interval = (b-a)/N;

vectA = a:interval:b-interval;
vectB = a+interval:interval:b;

delta = vectB - vectA;

f = (vectA + vectB)/2;

midpoints = test_func(f);
midpoints = midpoints * (delta');
M = sum(midpoints);


end