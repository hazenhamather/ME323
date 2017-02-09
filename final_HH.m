%*********************************
% Hazen Hamather
% Section 02
% Final Exam
%*********************************
clear all
clc

xL = -10;
xR = 4;
tStep = 0.005;
errorTol = 1e-5;
c0 = 5;

[gradient, iterations] = BisectionFinal(xL,xR,errorTol,tStep,c0);
fprintf('The approximate dc/dt value at the start is %1.5f in %i iterations\n',gradient(end),iterations);