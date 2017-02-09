function [ y ] = myRK4HW9( T,gradientGuess,L,stepSize )

%Initialize state-vector in here
V = [T;gradientGuess];
y(:,1) = V;
deltat = stepSize;
distance = 0;

i = 1;
while distance <= L
    yStarPrime = derivativeHW9(V);
    yStar = V + (deltat/2) * yStarPrime;
    yDoubleStarPrime = derivativeHW9(yStar);
    yDoubleStar = V + (deltat/2) * yDoubleStarPrime;
    yTripleStarPrime = derivativeHW9(yDoubleStar);
    yTripleStar = V + deltat * yTripleStarPrime;
    
    % Final corrector
    lastCorrectorDeriv = derivativeHW9(yTripleStar);
    i = i + 1;
    y(:,i) = V + deltat * ((yStarPrime + 2 * yDoubleStarPrime + 2 * yTripleStarPrime + lastCorrectorDeriv)/6);
    V = y(:,i);
    distance = distance + stepSize;
   
end

end

