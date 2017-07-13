function [ OUT_Ax_Backwards ] = Calculate_Ax_Backwards(Vehicle, speed, radius )
%This function calculates available longitudinal acceleration based on
%radius, speed and vehicle parameters.

%Calcualtes gg diagram radius
radius_gg = Max_acceleration(Vehicle, speed);

%Calculates available longitudinal acceleration without any engine
%limitations
Max_Ax_unconstrained = sqrt(abs((radius_gg^2)-(Ay(speed, radius))^2));

%Output
OUT_Ax_Backwards = Max_Ax_unconstrained + Ax_drag(Vehicle, speed);
 
end

