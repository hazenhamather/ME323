%*************************************
% Hazen Hamather
% Section 02
% Lab 8
%*************************************
clear all
clc

y0 = 1;
tstart = 0;
deltat = 0.0001;
tstop = 5;
tstop = tstop + deltat;
[Eulery, Eulert] = myEuler(y0, tstart, tstop, deltat);
[PCy, PCt] = myPC(y0,tstart,tstop,deltat);
[RKy,RKt] = myRK4(y0,tstart,tstop,deltat);
exact = 2 * exp(-RKt) + RKt -1;

EulerError = abs(Eulery(end) - exact(end));
fprintf('Euler gives the final value of y as %1.4e, with %1.4e error.\n',Eulery(end),EulerError)

PCError = abs(PCy(end) - exact(end));
fprintf('PC gives the final value of y as %1.4e, with %1.4e error.\n',PCy(end),PCError)

RK4Error = abs(RKy(end) -exact(end));
fprintf('RK4 gives the final value of y as %1.4e, with %1.4e error.\n',RKy(end),RK4Error)

plot(Eulert, Eulery,'r')
hold on
plot(PCt,PCy,'c')
plot(RKt,RKy,'b')
plot(RKt,exact,'m')
hold off
legend('Euler Method','Predictor-Corrector','RK4','Exact Solution');