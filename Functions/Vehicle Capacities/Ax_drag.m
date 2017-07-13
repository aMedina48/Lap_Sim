function [ OUT_drag_decel ] = Ax_drag( Vehicle, speed )
%This functio calculates the deceleration in m/s^2 that drag causes on the vehicle
%when moving, given speed and vehicle parameters. 

OUT_drag_decel = Fx_drag(Vehicle, speed)./Vehicle.m;

end

