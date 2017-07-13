%% Load Transfer for each corner under longitudinal acceleration

for i=1:length(track.radius)
    
    Longitudinal_load_transfer = Calculate_longitudinal_load_transfer(Vehicle, Longitudinal_acceleration(i));

if Longitudinal_acceleration(i) >= 0

LongitudinalV_FL(i) = -Longitudinal_load_transfer/2;  %#ok<*SAGROW>
LongitudinalV_FR(i) = -Longitudinal_load_transfer/2;
LongitudinalV_RL(i) = +Longitudinal_load_transfer/2;
LongitudinalV_RR(i) = +Longitudinal_load_transfer/2;

else
    
LongitudinalV_FL(i) = +Longitudinal_load_transfer/2;
LongitudinalV_FR(i) = +Longitudinal_load_transfer/2;
LongitudinalV_RL(i) = -Longitudinal_load_transfer/2;
LongitudinalV_RR(i) = -Longitudinal_load_transfer/2;

end
    
    
end



    

    
   
    

  
    

