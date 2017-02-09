function [ y,t ] = myPC( y0,tstart,tstop,deltat )

y(1) = y0;
t(1) = tstart;
timeCount = 1;

for i = 2:(tstop + deltat)/deltat
    yprime = derivative_Lab8(y0,t(timeCount));
    yhalf = y0 + (deltat/2) * yprime;
    yhalfprime = derivative_Lab8(yhalf,t(timeCount) + (deltat/2));
    y(i) = y0 + deltat * yhalfprime;
    y0 = y(i);
    t(i) = tstart + deltat * timeCount;
    timeCount = timeCount + 1;
    
end


end

