%***********************
% Hazen Hamather
% Section 02
%***********************

clear all
clc

R_lower = 3.0;
R_upper = 18;
N = 200;
error_tol = 0.001;

[root, iterations] = Bisection_Part2_MidTerm(R_lower, R_upper, error_tol, N);
fprintf('The result of the combined Simpson and Bisection methods yielded %2.3e after %i iterations.\n',root,iterations);