%% Confidence Function
function [ theta, n,y,x,error,Resid ] = Newton_Raphson_Missile( thetaGuess,tol,v0,targetx,targety )
    %% Body of code
%     fprintf('\t  Iteration  \t\t\t  t  \t\t\t  R(t)  \t\t\t  error\t\t\t\n');
%     fprintf('--------------------------------------------------------------------------------------\n');
%     fprintf('Iteration       angle (deg)        R (m)        error (deg) \n');
%     fprintf('-------------------------------------------------------------\n');
    i = 1;
    n(i) = 1;
    
    total_error = tol + 10;
    t_oldest = thetaGuess;
    
    while abs(total_error) > tol
        theta(n(i)) = t_oldest;
        [y1,t1] = myRK4Lab9(v0,t_oldest,targetx);
        y_end = y1(2,end-1) + ((targetx - y1(1,end-1))/(y1(1,end) - y1(1,end-1))) * (y1(2,end) - y1(2,end-1));
        R = y_end - targety;
        Resid(n(i)) = R;
        t_delta = t_oldest * 1.01;
        [y2,t2] = myRK4Lab9(v0, t_delta,targetx);
        y_end2 = y2(2,end-1) + ((targetx - y2(1,end-1))/(y2(1,end) - y2(1,end-1))) * (y2(2,end) - y2(2,end-1));
        
        R_delta = y_end2 - targety;
        
        R_prime = (R_delta - R)/(t_delta - t_oldest);
        
        t_current = t_oldest - (R/R_prime);
        total_error = R/R_prime;
        error(n(i)) = total_error;
%         fprintf('\t %i \t\t\t %2.3e \t\t\t %2.3e \t\t\t %2.3e\n',n,t_oldest,R,total_error);
%         fprintf('  %i            %1.7e            %1.3e          %1.3e\n',n,t_oldest,R,total_error);
        t_oldest = t_current;
        
        i = i + 1;
        n(i) = n(i-1) + 1;
    end
% answer = t_current;
% error = total_error;
n(length(n)) = [];
y = y1(2,:);
x = y1(1,:);
end

