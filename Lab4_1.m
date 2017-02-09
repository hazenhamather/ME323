clear all
clc

lower = input('What is the lower bound of the search interval? ');
upper = input('What is the upper bound of the search interval? ');
tolerance = input('What error tolerance would you like? ');

% practice = Colebrook(0)

[answer, n] = Bisection(lower, upper, tolerance);
