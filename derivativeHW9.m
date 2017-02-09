%% Computes the derivative of state vector
function [ dvdt ] = derivativeHW9( V )

P = pi * 0.005;
k = 385;
Ac = (pi * 0.005^2)/4;
eps = 0.8;
sig = 5.669 * 10^(-8);
h = 40;
Tamb = 290;
Tsurr = 270;

dvdt = zeros(2,1);
dvdt(1,1) = V(2);
dvdt(2,1) = (eps*sig*P*(V(1)^4-Tsurr^4)+h*P*(V(1)-Tamb))/(k*Ac);

end

