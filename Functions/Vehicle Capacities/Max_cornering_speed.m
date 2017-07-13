function [ OUT_Vapex ] = Max_cornering_speed( Vehicle, radius )
%This function calculates max speed at a given instant based on the
%radius and vehicle parameters as if all the tire grip capacity was
%used for purely cornering.


%Step 1: Calculates max speed based on radius and vehicle parameters

OUT_Vapex =  ((9.81*Vehicle.friction_coefficient)./...
             (abs(1./radius) - (Vehicle.rho*Vehicle.CL*Vehicle.friction_coefficient/(2*Vehicle.m)))).^0.5;  

%Step 2: If calculated speed is greater than the vehicle's maximum speed,
%the functioni will output the vehicle max speed.

OUT_Vapex(OUT_Vapex > Vehicle.v_max)= Vehicle.v_max;


%Step 3: Further security to make equation more robust in case that the
%funcitons attemps to calculate the square.

OUT_Vapex((1./abs(radius)) < (Vehicle.rho*Vehicle.CL*Vehicle.friction_coefficient/(2*Vehicle.m))) = Vehicle.v_max;

end

