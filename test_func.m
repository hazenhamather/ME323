function [f] = test_func(z)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  This is a test function provided for ME 323 mid-term exam.
%  You are NOT allowed to modify it in any way.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

f = 6.8 ./ (sqrt(z) .* log(z.^2 + 3));