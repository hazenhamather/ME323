%% Confidence Function
function [ answer, n, guess_vec, R_vec ] = Newton_Raphson_2D( x_guess, tol, jacobian)
    %% Body of code
    fprintf('\t  Iteration \t x(1) \t x(2) \t R(1) \t R(2) \t dx(1) \t dx(2) \n');
    fprintf('--------------------------------------------------------------------------------------\n');
    
    n = 1;
    column = 1;
    guess_vec = x_guess;
    R_vec = Residual2D(guess_vec);
    
    total_error = tol + 10;
    
    x_oldest = x_guess;
    
    while abs(total_error) > tol
        if column > 1
            guess_vec(1,column) = x_oldest(1);
            guess_vec(2,column) = x_oldest(2);
        end
        R = Residual2D(x_oldest);
        if column > 1
            R_vec(1, column) = R(1);
            R_vec(2, column) = R(2);
        end
        
        x_delta = jacobian \ (-R);
        x_current = x_oldest + x_delta;
        
        magnitude = abs(x_delta);
        total_error = max(magnitude);
        
        fprintf('\t %i \t %1.2e \t %1.2e \t %1.2e \t %1.2e \t %1.2e \t %1.2e \t\n',n,x_oldest(1), x_oldest(2),R(1), R(2),x_delta(1), x_delta(2));
        
        x_oldest = x_current;

        n = n + 1;
        column = column + 1;
    end
answer = x_current;
n = n - 1;
end

