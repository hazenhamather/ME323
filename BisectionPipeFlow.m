function [ answer, n ] = BisectionPipeFlow( f_lower, f_upper, error, velocity, diameter, epsilon)
    n = 1;
    
while (f_upper - f_lower) / 2 > error
    R_lower = ColebrookPipeFlow(f_lower, velocity, diameter, epsilon);
    R_upper = ColebrookPipeFlow(f_upper, velocity, diameter, epsilon);
    mp = (f_lower + f_upper) / 2;
    R_mid = ColebrookPipeFlow(mp, velocity, diameter, epsilon);
    tol_error = (f_upper - f_lower) / 2;
    
    if R_lower * R_upper > 0
        answer = 'Error';
        break
    end
   
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

