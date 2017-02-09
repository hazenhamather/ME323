function [ dvdt ] = derivative_Lab9( V )
k = 0.02;
g = 9.81;

dvdt(1) = V(3);
dvdt(2) = V(4);
dvdt(3) = - k * V(3) * sqrt(V(3)^2 + V(4)^2);
dvdt(4) = - g - k * V(4) * sqrt(V(3)^2 + V(4)^2);

dvdt = dvdt';
end

