% Finds, by bisection, the appropriate starting gradient for a
% concentration eqution
function [ answer, n ] = BisectionFinal( x_lower, x_upper, error,tStep,c0)
    n = 1;
    fprintf(  'Iteration         x_lower         x_upper         R_lower       R_upper        R_mid         error    \n')
    fprintf('------------------------------------------------------------------------------------------------------\n')
    
while (x_upper - x_lower) / 2 > error
    R_lower = myEulerFinal(c0,x_lower,3,tStep);
    R_lower = R_lower(1,end); % Residual is final concentration of state vec
    R_upper = myEulerFinal(c0,x_upper,3,tStep);
    R_upper = R_upper(1,end); % Residual is final concentration of state vec
    mp = (x_lower + x_upper) / 2;
    R_mid = myEulerFinal(c0,mp,3,tStep);
    R_mid = R_mid(1,end); % Residual is final concentration of state vec
    tol_error = (x_upper - x_lower) / 2;
    
    if R_lower * R_upper > 0
        answer = 'Error';
        break
    end

     fprintf('%i         %2.3e          %2.3e          %2.3e         %2.3e         %2.3e          %2.3e\n',n,x_lower,x_upper,R_lower,R_upper,R_mid,tol_error);
   
    if R_lower < 0 & R_mid < 0
        x_lower = mp;
    elseif R_lower > 0 & R_mid > 0
        x_lower = mp;
    end
    
    if R_upper > 0 & R_mid > 0
        x_upper = mp;
    elseif R_upper < 0 & R_mid < 0
        x_upper = mp;
    end
    
    n = n + 1;
end
n = n-1;
answer = mp;
end

