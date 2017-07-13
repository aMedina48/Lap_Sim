function [ OUT_Fz ] = Lift( Vehicle, speed )
%This function calculates lift based on vehicle parameters and speed.

OUT_Fz = 0.5 * Vehicle.rho * Vehicle.A * (speed.^2) * Vehicle.CL;

end

