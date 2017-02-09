function [ R ] = Confidence_Interval( t, alpha )
R = erf(t/sqrt(2)) - alpha/100;
end

