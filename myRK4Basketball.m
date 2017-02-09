function [ y,t ] = myRK4Basketball( y0,xstart,xstop,deltax )

y(1) = y0;
t(1) = xstart;
timeCount = 1;

for i = 2:(xstop+deltax)/deltax
    yStarPrime = derivative_Lab8(y0,t(timeCount));
    yStar = y0 + (deltax/2) * yStarPrime;
    yDoubleStarPrime = derivative_Lab8(yStar, t(timeCount) + (deltax/2));
    yDoubleStar = y0 + (deltax/2) * yDoubleStarPrime;
    yTripleStarPrime = derivative_Lab8(yDoubleStar,t(timeCount) + (deltax/2));
    yTripleStar = y0 + deltax * yTripleStarPrime;
    
    % Final corrector
    lastCorrectorDeriv = derivative_Lab8(yTripleStar, t(timeCount) + deltax);
    y(i) = y0 + deltax * ((yStarPrime + 2 * yDoubleStarPrime + 2 * yTripleStarPrime + lastCorrectorDeriv)/6);
    y0 = y(i);
    t(i) = xstart + deltax * timeCount;
    timeCount = timeCount + 1;
end

end

