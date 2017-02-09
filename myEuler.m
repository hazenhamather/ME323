function [ y,t ] = myEuler( y0,tstart,tstop,deltat )

% i = 1;
y(1) = y0;
t(1) = tstart;
% t(1) = tstart;
timeCount = 1;

for i = 2:(tstop + deltat)/deltat
%     i = i + 1;
    yprime = derivative_Lab8(y0,t(timeCount));
    y(i) = y0 + yprime * deltat;
    y0 = y(i);
    t(i) = tstart + deltat*timeCount;
    timeCount = timeCount + 1;
    
end
end

