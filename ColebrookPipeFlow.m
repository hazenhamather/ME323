%******************************
% Hazen Hamather
% Section 02
%******************************

% Returns the Residual for a given set of parameters. Called by
% BisectionPipeFlow in order to find the real friction factor 'f'

function [ R ] = ColebrookPipeFlow( f, velocity, diameter, epsilon )
density = 1000;
mu = 0.001;

Re = (density*velocity*diameter)/mu;
rough = epsilon/diameter;
R = 1/sqrt(f)+2*log10(rough/(3.7)+2.51/(Re*sqrt(f)));
end

