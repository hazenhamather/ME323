%**************************
% Hazen Hamather
% Section 02
%**************************

function [ answer, n ] = Bisection_Part2_MidTerm( f_lower, f_upper, error,N)
    n = 1;
    fprintf(  'Iteration         x_lower         x_upper         R_lower         R_upper         R_mid          error    \n')
    fprintf('------------------------------------------------------------------------------------------------------\n')
    
while (f_upper - f_lower) / 2 > error
    R_lower = midTerm_Residual(f_lower,N);
    R_upper = midTerm_Residual(f_upper,N);
    mp = (f_lower + f_upper) / 2;
    R_mid = midTerm_Residual(mp,N);
    tol_error = (f_upper - f_lower) / 2;
    
    if R_lower * R_upper > 0
        answer = 'Error';
        break
    end

     fprintf('%4i           %2.3e        %2.3e        %2.3e       %2.3e       %2.3e     %2.3e\n',n,f_lower,f_upper,R_lower,R_upper,R_mid,tol_error);
    
    if R_lower * R_mid < 0
        f_upper = mp;
    else
        f_lower = mp;
    end
    
    n = n + 1;
end

answer = mp;
n = n-1;

end

