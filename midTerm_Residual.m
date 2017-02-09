%************************
% Hazen Hamather
% Section 02
%************************

function [ R ] = midTerm_Residual( x,N )

R = simpson_HH(1,x*x,N);
R = R - 3*x +4;

end

