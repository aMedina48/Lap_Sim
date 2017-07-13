function [ OUT_Ax_Forward ] = Calculate_Ax_Forward(Vehicle, speed, radius)
%This function calculates the available longitudinal acceleration based on
%the instantaneous radius, speed and vehicle parameters.

%Calcualtes gg diagram radius
radius_gg = Max_acceleration(Vehicle, speed);


%Calculates available longitudinal acceleration without any engine
%limitations
Max_Ax_unconstrained = sqrt(abs((radius_gg^2)-(Ay(speed, radius))^2));


%Calculates maximum longitudinal acceleration engine can deliver 
Ax_engine_limited = Ax_engine(Vehicle, speed);


if Max_Ax_unconstrained > Ax_engine_limited
 
   OUT_Ax_Forward =   Ax_engine_limited - Ax_drag(Vehicle, speed);
   
else
    
   OUT_Ax_Forward = Max_Ax_unconstrained - Ax_drag(Vehicle, speed);
  
end


end

