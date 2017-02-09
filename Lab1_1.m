clc
clear all

%% Initialization
k_Air = 1.4;
k_N2 = 1.4;
k_He = 1.67;

R_Air = 287;
R_N2 = 296.8;
R_He = 2077;

%% Gathering User Input
flowVelocity = input('What is the flow velocity:');
temperature = input('What is the temperature in Kelvin:');
gas = input('Which gas would you like? 1 for Air, 2 for Nitrogen, or 3 for Helium:');

%% Checking User Input
if gas == 1
    k = k_Air;
    R = R_Air;
    a = sqrt(k * R * temperature);
    M = flowVelocity / a;
elseif gas == 2
    k = k_N2;
    R = R_N2;
    a = sqrt(k * R * temperature);
    M = flowVelocity /a;
elseif gas == 3
    k = k_He;
    R = R_He;
    a = sqrt(k * R * temperature);
    M = flowVelocity / a;
end

%% Evaluating the Mach Number and flow compressibility
if M < 0.3
    fprintf('The Mach number is %.5f and the flow is incompressible', M);
elseif M < 1.0 && M >= 0.3
    fprintf('The Mach number is %.5f and the flow is subsonic and compressible', M);
elseif M == 1.0
    fprintf('The Mach number is %.4f and the flow is sonic', M);
elseif M < 5.0 && M > 1.0
    fprintf('The Mach number is %.4f and the flow is supersonic and highly compressible', M);
else
    fprintf('The Mach number is %.4f and the flow is hypersonic', M);
end
