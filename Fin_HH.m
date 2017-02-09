%**************************
% Hazen Hamather
% Section 02
% Homework 7
%**************************

clear all
clc

% establishing the error and other parameters
coarseError = 0.01;
fineError = 0.1;
n = 4;
numberOfSections = n + 1;
numberOfSectionsOld = numberOfSections;
numberOfSectionsNew = numberOfSections;
L = 0.05;

totalError = fineError * 10;

fprintf('# of Sections          max error   \n');
fprintf('----------------------------------\n');
deltax = L/n;
temp = tempGenerator(n);

% Initializing first coarse vector
[temp1Vec, iterations, error,R ]= Newton_Raphson_2D_Heat_Transfer(temp,n, coarseError, deltax);
% Entering the loop to iterate onto the correct temperatures
while totalError > fineError
    n = n * 2;
    numberOfSectionsNew = numberOfSections * 2 -1;
    deltax = L/n;
    temp = tempGenerator(n);
    [Temperature2,iterations,error,R] = Newton_Raphson_2D_Heat_Transfer(temp,n, coarseError, deltax);
    
    for j = 1:length(temp1Vec)
         temp2Vec(j) = Temperature2(2 * j -1);
    end
    totalError = (4/3) * (temp2Vec - temp1Vec);
    totalError = abs(totalError);
    totalError = max(totalError);
    temp1Vec = Temperature2;
    numberOfSections = n + 1;
    fprintf('%i                    %1.7e\n',n/2,totalError);    

end

% Final details and plotting
fprintf('The final tip temperature was found to be %1.8e in %i iterations.\n',temp2Vec(end),n);
x = 0:L/(length(temp2Vec)-1):L;
figure(1)
plot(x,temp2Vec,'o-')
xlabel('Distance along fin (cm)');
ylabel('Temperature (K)');
title('Temperature vs Distance for Heat Transfer Equation');
R = HeatTransferResidual(n,Temperature2,deltax);
xRange = 0:deltax:L;
figure(2)
plot(xRange,R);
xlabel('Distance along fin (cm)');
ylabel('Residual for final temperatures');
title('Residual vs distance along fin');