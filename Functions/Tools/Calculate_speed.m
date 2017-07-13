function [ OUT_speed ] = Calculate_speed(Vehicle, Gear_ratio, RPM)
%This function calculates the speed at a given RPM and gear ratio.


OUT_speed = (RPM * (2 * pi) * Vehicle.wheel_radius) / ( Gear_ratio * Vehicle.final_drive * Vehicle.internal_reduction * 60);

end

