clear all
clc

%% Initialization
P = 10000; %lb
L = 20 * 12; %in
p = 0.284; %lb/in^3
allowableStress = 24000; %psi
t = 0.6625; %in
stepSize = 0.01; %Step-size for incrementing the matrix
smallestWeight = 5000000000; %Large value for comparison
maxH = 12;

%% Getting matrices lined up properly
h_vec = [2:stepSize:maxH]';
w_vec = [1:stepSize/2:maxH/2]';

h_ones = ones(1,length(h_vec));
w_ones = ones(1, length(w_vec));

h = h_vec * h_ones;
w = w_vec * w_ones;

w = w';

A = h * t + 2 * t * (w - t);

%% Computing values such as I, max moment, and stress
q = A*p;
Mmax = 0.5*(P+q*L)*L - (0.5)*q*L*L;
I = 1/12*(w.*h.^3-(w-t).*(h-2*t).^3);
c = h/2;
actualStress = (Mmax .* c')./I;

%% Eliminating impossible or unusable beams
actualStress = ((h-w) >= h./2) .* actualStress;
actualStress = (I >= 0) .* actualStress;
actualStress = (actualStress <= allowableStress) .* actualStress;

%% Getting the location of the lightest and strongest beam
[max_Stress, i] = max(actualStress(:));

%% Getting ideal values
h_real = h(i);
w_real = w(i);
A_real = A(i);
I_real = I(i);
weight_real = A_real*p*L;

%% Printing ideal beam dimensions to the console
fprintf('With t being fixed at %.4f in, the beam has h = %.3f in and\nw = %.3f in. These dimensions yield A = %.3f in^2, \nI = %.4f in^4, and total beam weight = %.3f lb.',t, h_real, w_real, A_real, I_real, weight_real);