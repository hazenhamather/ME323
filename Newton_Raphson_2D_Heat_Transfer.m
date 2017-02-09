%% Newton-Raphson for Heat Transfer
function [ answer, iterations, error,R ] = Newton_Raphson_2D_Heat_Transfer( t_guess, n, tol, deltax)
%% Body of code
    
    iterations = 1;
    
    total_error = tol * 10;
    jacobian = HeatTransJacobian(n,t_guess, deltax);
    t_oldest = t_guess;
    
    while abs(total_error) > tol
        R = HeatTransferResidual(n,t_oldest, deltax);
        
        x_delta = jacobian \ (-R);
        t_current = t_oldest + x_delta;
        
        magnitude = abs(x_delta);
        total_error = max(magnitude);
        
        t_oldest = t_current;

        iterations = iterations + 1;
    end
answer = t_current';
iterations = iterations - 1;
error = total_error;
end

