function [ OUT_Ay ] = Ay( speed, radius )
%This function calculates the lateral acceleration in m/s^2 for a given cornering
%speed and track radius.
% Anna is really happy that you changed all the variable names <3

OUT_Ay = (speed.^2./radius);


end

