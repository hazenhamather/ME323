%*******************************
% Hazen Hamather
% Section 02
% Lab 9
%*******************************
clear all
clc

targetx = input('What is the distance to the target? ');
targety = input('How high is the target? ');
thetaGuess = input('Initial theta guess: ');
thetaGuess = thetaGuess * (pi/180);
errorTol = input('What is the error tolerance? ');
errorTol = errorTol * (pi/180);
tStep = 0.01;

m = 20;
x0 = 0;
y0 = 0;
v0 = 300;

[theta, n,y,x,error,Resid] =  Newton_Raphson_Missile(thetaGuess,errorTol,v0,targetx,targety);
Resid = Resid';
error = error';
theta = theta';
n = n';
theta = theta * (180/pi);
error = error * (180/pi);
fprintf('Iteration       angle (deg)        R (m)        error (deg) \n');
fprintf('-------------------------------------------------------------\n');
for i = 1:length(n)
    fprintf('  %i            %1.7e            %1.3e          %1.3e\n',n(i),theta(i),Resid(i),error(i));
    
end

fprintf('The final converged angle is %1.7e degrees.\n',theta(end));
plot(x,y,'k-')
hold on
plot(targetx, targety,'ro');