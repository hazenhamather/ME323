%% Confidence Function
function [ V, n,finalGradient ] = Newton_Raphson_HW9( tempGuess, gradientGuess,L,stepSize,tol )
    %% Body of code
    
    n = 1;
    total_error = tol * 10;
    temp = tempGuess;
    oldGradientGuess = gradientGuess;
    
    while abs(total_error) > tol
        
        V = myRK4HW9(temp,oldGradientGuess,L,stepSize);
        R = HW9Residual(V);
        t_delta = V(2,end) * .01;
        R_delta = HW9Residual(V * 1.01);
        
        R_prime = (R_delta - R)/(t_delta);
        
        oldGradientGuess = V(2,1) - (R/R_prime);
        total_error = R/R_prime;
        
        n = n + 1;
    end
finalGradient = oldGradientGuess;
n = n - 1;
end

