%*************************
% Hazen Hamather
% Section 02
%*************************

function [ T ] = trape_HH( a, b, N )

delta = (b-a)/N;
vectA = a:delta:b-delta;
vectB = a + delta:delta:b;

fA = test_func(vectA);
fB = test_func(vectB);

b_minus_a = vectB - vectA;

T = ((fA + fB)/2)*b_minus_a';


end

