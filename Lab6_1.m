%******************************
% Hazen Hamather
% Section 02
%******************************

clear all
clc

initialGuess = [-1;0];
x = initialGuess;
errorTol = 0.001;

jacobian = [4*x(1) 6*x(2); -0.5*exp(0.5*x(1)) 1];
[answer, n, guess_vec, R_vec] = Newton_Raphson_2D(x, errorTol,jacobian);
guess_vec = guess_vec';
R_vec = R_vec';

theta = 0:0.01:2*pi;
r = sqrt(1./(2*cos(theta).^2+3*sin(theta).^2));

x1 = r.*cos(theta);
x2 = r.*sin(theta);

xRange = -1:0.01:1;
R2= exp(0.5 * xRange) - 1;

guessX = guess_vec(:,1);
guessY = guess_vec(:,2);

plot(x1, x2,'b')
hold on
plot(xRange, R2,'r')
plot(guessX, guessY,'ko-')
hold off