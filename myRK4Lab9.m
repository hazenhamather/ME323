function [ y,t ] = myRK4Lab9( v0,thetaGuess,targetx )

%Initialize state-vector in here
V = [0;0;v0 * cos(thetaGuess);v0 * sin(thetaGuess)];
y(:,1) = V;
t(1) = 0;
timeCount = 1;
deltat = 0.01;

% for i = 2:(tstop+deltat)/deltat
i = 1;
while V(1) < targetx
    yStarPrime = derivative_Lab9(V);
    yStar = V + (deltat/2) * yStarPrime;
    yDoubleStarPrime = derivative_Lab9(yStar);
    yDoubleStar = V + (deltat/2) * yDoubleStarPrime;
    yTripleStarPrime = derivative_Lab9(yDoubleStar);
    yTripleStar = V + deltat * yTripleStarPrime;
    
    % Final corrector
    lastCorrectorDeriv = derivative_Lab9(yTripleStar);
    i = i + 1;
    y(:,i) = V + deltat * ((yStarPrime + 2 * yDoubleStarPrime + 2 * yTripleStarPrime + lastCorrectorDeriv)/6);
    V = y(:,i);
    t(i) = t(1) + deltat * timeCount;
    timeCount = timeCount + 1;
   
end

end

