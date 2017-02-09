% Computes the derivative for the state vector V
function [ dvdt ] = finalDerivative( V )

dvdt = zeros(2,1);
dvdt(1,1) = V(2);
dvdt(2,1) = (4/3) * V(1);


end

