%**********************************
% Hazen Hamather
% Section 02
% Homework 5
%**********************************

clear all
clc

%% Initialization
massFlowIn = input('What is the mass flow rate into the system? ');
errorTol = input('What error tolerance would you like? ');
diameterGuess = input('What diameter would you like to estimate? ');
lowerBound = 0.0001;
upperBound = 0.1;
Kelbow = 0.3;

lowerDiameter = 0.4;
lowerArea = (pi * lowerDiameter^2)/4;
L1 = 30; 
L2 = 80; 

density = 1000;
mu = 0.001;
upperRoughness = 0.000002; 
lowerRoughness = 0.000045; 

%% Initial Calculations
vb = massFlowIn/(density * lowerArea);
mDot1 = massFlowIn * 0.65;
v1 = mDot1/(density * lowerArea);

mDot2 = massFlowIn * 0.35;

%% Calculating the constant Delta P of the lower pipe
f1 = BisectionPipeFlow(lowerBound, upperBound, errorTol, v1, lowerDiameter, lowerRoughness);
deltaPLower = f1*L1*v1^2/(2*lowerDiameter)+.2*vb^2*(1/2)+1.1*v1^2*(1/2);

%% Entering into Newton-Raphson for diameter iteration
[actualDiameter, n] = Newton_Raphson_Pipe_Flow(diameterGuess, errorTol, upperRoughness, mDot2, L2, deltaPLower, Kelbow, vb,density);
v2 = mDot2/(density * ((pi * actualDiameter^2)/4));
f = BisectionPipeFlow(lowerBound, upperBound, errorTol, v2, actualDiameter,upperRoughness);