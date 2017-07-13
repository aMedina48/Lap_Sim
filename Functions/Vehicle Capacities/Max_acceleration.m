function [ OUT_max_accel ] = Max_acceleration( Vehicle, speed )
%This function calculates the maximum acceleration in m/s^2 that the tires are
%capable to apply to the road at a given speed based on vehicle parameters.

OUT_max_accel = (((Vehicle.m * 9.81)+(Lift(Vehicle, speed))).* Vehicle.friction_coefficient)./ Vehicle.m;

end

