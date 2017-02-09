%************************************************
% Hazen Hamather
% Section 02
%
% Mechanical Energy Balance of losses method
%***********************************************

function [ R ] = MEBres( f_lower, f_upper, errorTol, diameter, L2, mDot2, vb,Kelbow,epsilon, deltaPLower,density )

upperArea  = (pi * diameter^2)/4;
v2 = mDot2/(density * upperArea);

f = BisectionPipeFlow(f_lower, f_upper,errorTol, v2,diameter, epsilon);

R = f*L2*v2^2/(2*diameter)+((1/2)*vb^2+2*Kelbow*v2^2*(1/2)+1.5*v2^2*(1/2)) - deltaPLower;

end

