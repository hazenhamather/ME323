function [ answer, n ] = Bisection( f_lower, f_upper, error)
    n = 1;
    fprintf(  'Iteration         f_lower         f_upper         R_lower       R_upper        R_mid         error    \n')
    fprintf('------------------------------------------------------------------------------------------------------\n')
    
while (f_upper - f_lower) / 2 > error
    R_lower = Colebrook(f_lower);
    R_upper = Colebrook(f_upper);
    mp = (f_lower + f_upper) / 2;
    R_mid = Colebrook(mp);
    tol_error = (f_upper - f_lower) / 2;
    
    if R_lower * R_upper > 0
        answer = 'Error';
        break
    end

     fprintf('%i         %2.3e          %2.3e          %2.3e         %2.3e         %2.3e          %2.3e\n',n,f_lower,f_upper,R_lower,R_upper,R_mid,tol_error);
   
    if R_lower < 0 && R_mid < 0
        f_lower = mp;
    elseif R_lower > 0 && R_mid > 0
        f_lower = mp;
    end
    
    if R_upper > 0 && R_mid > 0
        f_upper = mp;
    elseif R_upper < 0 && R_mid < 0
        f_upper = mp;
    end
    
    n = n + 1;
end

answer = mp;
end

