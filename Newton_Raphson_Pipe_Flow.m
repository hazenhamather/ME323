%*******************************
% Hazen Hamather
% Section 02
%
% Newton-Raphson diameter iteration method
%*******************************

function [ actualDiameter, n ] = Newton_Raphson_Pipe_Flow( d_guess, tol, epsilon,mDot2,L2, deltaPLower,Kelbow,vb,density)
    fprintf('\t  Iteration  \t\t\t  d  \t\t\t  R(d)  \t\t\t  error\t\t\t\n');
    fprintf('--------------------------------------------------------------------------------------\n');
    
    %% Initialization
    n = 1;
    total_error = tol * 10;
    d_oldest = d_guess;
    lowerBound = 0.0001;
    upperBound = 0.1;
    
    %% Entering the iterative loop
    while abs(total_error) > tol
        
        
        R = MEBres(lowerBound, upperBound,tol,d_oldest,L2, mDot2,vb,Kelbow,epsilon, deltaPLower,density);
        d_delta = d_oldest * 1.01;
        R_delta = MEBres(lowerBound,upperBound,tol,d_delta,L2,mDot2,vb,Kelbow,epsilon, deltaPLower,density);
        
        R_prime = (R_delta - R)/(d_delta - d_oldest);
        
        d_current = d_oldest - (R/R_prime);
        total_error = R/R_prime;
        fprintf('\t %i \t\t\t %2.3e \t\t\t %2.3e \t\t\t %2.3e\n',n,d_oldest,R,total_error);
        
        d_oldest = d_current;
        
        n = n + 1;
    end
actualDiameter = d_current;
n = n - 1;
end

