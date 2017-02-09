% Computes an aproximation of the concentration function until t=tStop
function [ y ] = myEulerFinal( c0,gradientGuess,tstop,deltat )

V = [c0,gradientGuess]';
y(:,1) = V;

for i = 2:(tstop + deltat)/deltat
    yprime = finalDerivative(V);
    y(:,i) = V + yprime * deltat;
    V = y(:,i);
    
end
end

