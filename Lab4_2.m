clear all
clc 

t_guess = input('What is your initial guess? ');
tol = input('What error tolerance would you like? ');
alpha = input('What confidence interval would you like? ');

[answer, n] = Confidence(t_guess, tol, alpha);

fprintf('With the Newton Raphson Method, %i iterations are required to converge to an answer of %2.3e\n',n,answer');