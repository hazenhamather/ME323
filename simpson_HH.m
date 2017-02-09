%********************
% Hazen Hamather
% Section 02
%********************

function [ S ] = simpson_HH( a, b, N )

M = mid_pt_HH(a,b,N);
T = trape_HH(a,b,N);

S = (2*M + T)/3;

end

