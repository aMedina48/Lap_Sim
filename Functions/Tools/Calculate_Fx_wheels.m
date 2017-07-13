function [ OUT_Fx ] = Calculate_Fx_wheels(Vehicle, Engine_torque, Gear_ratio)
%This function calculates the force at the wheels for a given gear ratio
%and ground and speed.

OUT_Fx = (Engine_torque * Gear_ratio * Vehicle.final_drive * Vehicle.internal_reduction ) / Vehicle.wheel_radius;

end

