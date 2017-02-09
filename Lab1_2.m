clear all
clc

%% Initialization
M = input('Enter the Mach number: ');
theta = 0:0.01:2*pi;
x0 = 0;
y0 = 0;

%% Calculations
for ts = 0:0.01:4
    if ts < 1
            x1 = x0 + (ts * cos(theta));
            y1 = y0 + (ts * sin(theta));
            plot(x1, y1, 'r');
            axis([-8,5,-5,5])
            pause(0.01);
    elseif ts < 2 && ts >= 1
            x1 = x0 + (ts * cos(theta));
            y1 = y0 + (ts * sin(theta));
            x2 = (x0 - M * 1) + (ts -1) * cos(theta);
            y2 = y0 + (ts -1) * sin(theta);
            plot(x1, y1, x2, y2);
            axis([-8,5,-5,5])
            pause(0.01);
    elseif ts < 3 && ts >= 2
            x1 = x0 + (ts * cos(theta));
            y1 = y0 + (ts * sin(theta));
            x2 = (x0 - M * 1) + (ts -1) * cos(theta);
            y2 = y0 + (ts -1) * sin(theta);
            x3 = (x0 - M * 2) + (ts -2) * cos(theta);
            y3 = y0 + (ts -2) * sin(theta);
            plot(x1, y1, x2, y2, x3, y3)
            axis([-8,5,-5,5])
            pause(0.01)
    elseif ts < 4 && ts >= 3
            x1 = x0 + (ts * cos(theta));
            y1 = y0 + (ts * sin(theta));
            x2 = (x0 - M * 1) + (ts -1) * cos(theta);
            y2 = y0 + (ts -1) * sin(theta);
            x3 = (x0 - M * 2) + (ts -2) * cos(theta);
            y3 = y0 + (ts -2) * sin(theta);
            x4 = (x0 - M * 3) + (ts - 3) * cos(theta);
            y4 = y0 + (ts - 3) * sin(theta);
            plot(x1, y1, x2, y2, x3, y3, x4, y4);
            axis([-8,5,-5,5])
            pause(0.01);
    end
end

%% Creating the legend
legend('t = 0', 't= 1', 't=2', 't=3')

        
        