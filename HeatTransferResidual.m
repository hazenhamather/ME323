%% Gets the Residual for the Heat Transfer equation
function [ R ] = HeatTransferResidual(n, t, deltax )

P = pi * 0.005;
k = 385;
Ac = (pi * 0.005^2)/4;
eps = 0.8;
sig = 5.669 * 10^(-8);
h = 40;
Tamb = 290;
Tsurr = 270;

for i = 1:n-1
    R(1,i) = k*Ac*(t(i)-2*t(i+1)+t(i+2))/deltax^2-eps*sig*P*(t(i)^4-Tsurr^4)-h*P*(t(i)-Tamb);
end
R(1,n) = (t(n-1) -4 * t(n) + 3 * t(n+1))/(2 * deltax);
R(1,n+1) = t(1) - 600;
R = R';

