%************************
% Hazen Hamather 
% Section 02
%************************

clear all
clc

a = 1; 
b = 20;
N = input('How many intervals? ');
area_M = mid_pt_HH(a,b,N);
fprintf('The midpoint integral is %2.8f.\n',area_M)

area_T = trape_HH(a, b, N);
fprintf('The trapezoidal integral is %2.8f.\n', area_T);

area_S = simpson_HH(a,b,N);
fprintf('The Simpson integral is %2.8f.\n', area_S);