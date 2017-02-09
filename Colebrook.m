function [ R ] = Colebrook( f )
Re = 75000;
rough = 0.0002;
R = 1/sqrt(f)+2*log10(rough/(3.7)+2.51/(Re*sqrt(f)));
end

