function [ y,t ] = myRK4( y0,tstart,tstop,deltat )

y(1) = y0;
t(1) = tstart;
timeCount = 1;

for i = 2:(tstop+deltat)/deltat
    yStarPrime = derivative_Lab8(y0,t(timeCount));
    yStar = y0 + (deltat/2) * yStarPrime;
    yDoubleStarPrime = derivative_Lab8(yStar, t(timeCount) + (deltat/2));
    yDoubleStar = y0 + (deltat/2) * yDoubleStarPrime;
    yTripleStarPrime = derivative_Lab8(yDoubleStar,t(timeCount) + (deltat/2));
    yTripleStar = y0 + deltat * yTripleStarPrime;
    
    % Final corrector
    lastCorrectorDeriv = derivative_Lab8(yTripleStar, t(timeCount) + deltat);
    y(i) = y0 + deltat * ((yStarPrime + 2 * yDoubleStarPrime + 2 * yTripleStarPrime + lastCorrectorDeriv)/6);
    y0 = y(i);
    t(i) = tstart + deltat * timeCount;
    timeCount = timeCount + 1;
end

end

