%% Confidence Function
function [ answer, n ] = Confidence( V, tol, alpha )
    %% Body of code
    fprintf('\t  Iteration  \t\t\t  t  \t\t\t  R(t)  \t\t\t  error\t\t\t\n');
    fprintf('--------------------------------------------------------------------------------------\n');
    
    n = 1;
    total_error = tol * 10;
    t_oldest = V;
    
    while abs(total_error) > tol
        
        R = HW9Residual(V);
        t_delta = t_oldest * 1.01;
        R_delta = HW9Residual(t_delta, alpha);
        
        R_prime = (R_delta - R)/(t_delta - t_oldest);
        
        t_current = t_oldest - (R/R_prime);
        total_error = R/R_prime;
        fprintf('\t %i \t\t\t %2.3e \t\t\t %2.3e \t\t\t %2.3e\n',n,t_oldest,R,total_error);
        
        t_oldest = t_current;
        
        n = n + 1;
    end
answer = t_current;
n = n - 1;
end

