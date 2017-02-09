clear all
clc

%% Initialization of endpoints
a = 2;
b = 4;

%% Plotting the function
range = a:0.01:b;
integrand = (5.*range-8.*(range.^2))./((range-7).*(range+3));

plot(range, integrand);

%% Calculations and Utilization of servant codes
M = myMid(a,b);
T = myTrap(a,b);
S = ((2 * M) + T) / 3;

%% Printing the results to the command line
fprintf('The integral of the function from x = %1.1f to %1.1f is estimated as: \nM = %1.5f, T = %1.5f, S = %1.5f in appropriate units.',a,b,M, T, S);