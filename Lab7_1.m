clear all
clc

errorTol = 0.01;
temp = [600;600;600;600;600];
deltax = 0.05/4;
P = pi * 0.005;
k = 385;
Ac = (pi * 0.005^2)/4;
eps = 0.8;
sig = 5.669 * 10^(-8);

jacobian = [1, 0, 0, 0, 0;k*Ac/deltax^2, -2*k*Ac/deltax^2-4*eps*sig*P*temp(2)^3, k*Ac/deltax^2, 0, 0;0, k*Ac/deltax^2, -2*k*Ac/deltax^2-4*eps*sig*P*temp(3)^3, k*Ac/deltax^2, 0; 0, 0, k*Ac/deltax^2, -2*k*Ac/deltax^2-4*eps*sig*P*temp(4)^3, k*Ac/deltax^2; 0, 0, 1/(2*deltax), -2/deltax, 3/(2*deltax)];
[answer, n, error ]= Newton_Raphson_2D_Heat_Transfer(temp, errorTol, jacobian, deltax);

x_range = 0:5/4:5;
plot(x_range, answer)
xlabel('x ( in cm)');
ylabel('Temperature (K)');

fprintf('Solution to the equations is = %1.7e K\n',answer(1));
fprintf('Solution to the equations is = %1.7e K\n',answer(2));
fprintf('Solution to the equations is = %1.7e K\n',answer(3));
fprintf('Solution to the equations is = %1.7e K\n',answer(4));
fprintf('Solution to the equations is = %1.7e K\n',answer(5));
fprintf('It takes %i iterations to converge with an accuracy of %1.4e\n',n,error);