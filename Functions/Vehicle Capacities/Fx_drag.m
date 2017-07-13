function [ OUT_Fx ] = Fx_drag( Vehicle, speed )
%This function calculates the total drag force given the speed and vehicle parameters

OUT_Fx = 0.5 .* Vehicle.rho .* Vehicle.A .* Vehicle.CD .* (speed.^2);

end

