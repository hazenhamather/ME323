%% Creates a jacobian matrix for the heat transfer equation
function [ jacobian ] = HeatTransJacobian( n,t, deltax )

P = pi * 0.005;
k = 385;
Ac = (pi * 0.005^2)/4;
eps = 0.8;
sig = 5.669 * 10^(-8);
h = 40;

jacobian = zeros(n+1);
i = 1;

for j = 2:n
        
        jacobian(i,j) = -2*k*Ac/deltax^2-4*eps*sig*P*t(i)^3-h*P;
        jacobian(i, j-1) = k*Ac/deltax^2;
        jacobian(i, j+1) = k*Ac/deltax^2;
        
        i = i + 1;
        
end

jacobian(n,n-1) = 1/(2*deltax);
jacobian(n,n) = -2/deltax;
jacobian(n,n+1) = 3/(2 * deltax);
jacobian(n+1, 1) = 1;

end

