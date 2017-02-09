clear all
close all
clc

%% Initialization
beam_Design = fopen('EX1_beamDesignHH.txt','wt');
P = 10000; %lb
L = 20 * 12; %in
p = 0.284; %lb/in^3
allowableStress = 24000; %psi
stepSize = 0.1; %Step-size for incrementing the for loop
smallestWeight = 50000000; %Large weight for comparison the first time
                           %through the loop
                           
%% Setting the minimum values for comparison
hMin = 12;
wMin = 6;
tMin = 6;
AMin = 2*wMin*tMin + (hMin - 2*tMin) * tMin;
qMin =  AMin * p * L;
IMin = 1/12*(wMin*hMin^3-(wMin-tMin)*(hMin-2*tMin)^3);

%% Entering the For Loop
for h = 2:stepSize:12
    for w = 1:stepSize:1/2*h
        for t = 1/16:stepSize:w
            A = 2*w*t + (h - 2*t) * t;
            q = A*p*L;
            Mmax = 1/2*(P+q*L)*L - (1/2)*q*L*L;
            c = h/2;
            I = 1/12*(w*h^3-(w-t)*(h-2*t)^3);
            actualStress = (Mmax * c)/I;
            if actualStress < allowableStress
                if q < smallestWeight
                    smallestWeight = q;
                    hMin = h;
                    wMin = w;
                    tMin = t;
                    qMin = q;
                    AMin = A;
                    IMin = I;
                    smallestStress = actualStress;
                end
            end
        end
    end
end

%% Printing out the values to give the lightest safe beam
fprintf(beam_Design,'The beam has h = %.3f in, w = %.3f in, and t = %.3f in.\n', hMin, wMin, tMin);
fprintf(beam_Design,'These dimensions yield A = %.2f in^2, I = %.2f in^4 and total beam\nweight = %.2f lb.\n', AMin, IMin, qMin);
fprintf(beam_Design,'The stress is %.2f psi.\n', smallestStress);

fclose(beam_Design);