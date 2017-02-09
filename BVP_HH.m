%**************************
% Hazen Hamather
% Section 02
% BVP_HH
%**************************

clear all
clc

P = pi * 0.005;
k = 385;
Ac = (pi * 0.005^2)/4;
eps = 0.8;
sig = 5.669 * 10^(-8);
h = 40;
Tamb = 290;
Tsurr = 270;

%% establishing the error and other parameters
newtonError = 0.01;
errorTol = input('What is the error tolerance? ');
tempGuess = 600;
gradientGuess = -0.016000;
L = 0.05;
stepSize = 0.1 * L;
n = stepSize;


totalError = errorTol * 10;

fprintf(' Step size / L          dT/dx_base   \n');
fprintf('--------------------------------------\n');

%% Initializing first coarse vector
[V1,iterations,gradient1 ]= Newton_Raphson_HW9(tempGuess, gradientGuess, L,stepSize,newtonError);
fprintf('%f         %1.7e   \n',stepSize/L,gradient1);
%% Entering the loop to iterate onto the correct temperatures
while totalError > errorTol
    stepSize = stepSize / 2;
    [V2,iterations,gradient2] = Newton_Raphson_HW9(tempGuess, gradientGuess, L, stepSize,newtonError);
    fprintf('%f         %1.7e  \n',stepSize/L,gradient2);

    totalError = abs(gradient2 - gradient1);
    gradient1 = gradient2;
    
  

end
figure(1)
fprintf('The final tip temperature is %1.8e with a stepSize of %f \n',V1(1,end),(stepSize * 2)/L);
x = 0:stepSize:L;
plot(x,V2(1,:));
xlabel('Distance along fin (cm)');
ylabel('Temperature of fin (K)');
title('Temperature vs Distance for Heat Transfer Equation');
%% Checking Final Answer
R = zeros(length(V2)-2,1);
count = 1;
for i = 2:length(V2)-1
R(count) = k*Ac*(V2(1, i+1)-2*V2(1, i)+V2(1, i-1))/stepSize^2-eps*sig*P*(V2(1, i)^4-Tsurr^4)-h*P*(V2(1, i)-Tamb);
count = count + 1;
end
x = stepSize:stepSize:L-stepSize;
figure(2)
plot(x,R);
xlabel('Distance along fin (cm)');
ylabel('Residual for Final Temperatures');
title('Residual vs distance along fin');
