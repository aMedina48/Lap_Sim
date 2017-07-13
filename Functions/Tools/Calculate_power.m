function [ OUT_power ] = Calculate_power( Vehicle, Engine_torque, Gear_ratio, RPM )
% This funciton calculates the available power at a given speed and gear
% ratio.

OUT_power = (Calculate_Fx_wheels(Vehicle, Engine_torque, Gear_ratio))*(Calculate_speed(Vehicle, Gear_ratio, RPM));

end

