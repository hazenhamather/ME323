function [ R ] = Residual2D( x )

R = [2*(x(1)^2) + 3*(x(2)^2)-1; x(2) - exp(0.5 * x(1)) + 1];


end

