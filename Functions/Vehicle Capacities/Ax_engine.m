function [ OUT_Ax_engine ] = Ax_engine( Vehicle, speed)
%This function calculates the maximum acceleration the engine can provide
%based on speed and vehicle parameters.

OUT_Ax_engine = (Vehicle.power / (speed * Vehicle.m));

end

