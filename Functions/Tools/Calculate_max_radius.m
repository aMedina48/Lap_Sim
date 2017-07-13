function [ OUT_max_radius ] = Calculate_max_radius( Vehicle)
%This function calculates the maximum radius that is not considered a
%straight line

OUT_max_radius = (Vehicle.v_max^2) / Max_acceleration(Vehicle, Vehicle.v_max);

end

