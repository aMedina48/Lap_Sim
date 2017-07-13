%% Load Transfer under Lateral Acceleration

%% Calculate Load Transfer on front axle

for i=1:length(track.radius)
    
    
    Front_Lateral_load_transfer =(Vehicle.m*Lateral_acceleration(i)/Vehicle.F_track)...
                                  *(((Vehicle.H*Vehicle.Kf)/(Vehicle.Kf+Vehicle.Kr))...
                                   + (Vehicle.CG_b*Vehicle.ZRF/Vehicle.wheelbase));
        
    if Lateral_acceleration >= 0
        
    LateralV_FL(i) = +Front_Lateral_load_transfer; %#ok<*SAGROW>
    LateralV_FR(i) = -Front_Lateral_load_transfer;
    
    else
        
    LateralV_FL(i) = -Front_Lateral_load_transfer;
    LateralV_FR(i) = +Front_Lateral_load_transfer;     
    end
    
end

%% Calculate Load Transfer on rear axle


Rear_Lateral_load_transfer =(Vehicle.m*Lateral_acceleration(i)/Vehicle.R_track)...
                                  *(((Vehicle.H*Vehicle.Kr)/(Vehicle.Kf+Vehicle.Kr))...
                                   + (Vehicle.CG_a*Vehicle.ZRR/Vehicle.wheelbase));
                               
                               
    if Lateral_acceleration >= 0
        
    LateralV_RL(i) = +Rear_Lateral_load_transfer; %#ok<*SAGROW>
    LateralV_RR(i) = -Rear_Lateral_load_transfer;
    
    else
        
    LateralV_RL(i) = -Rear_Lateral_load_transfer;
    LateralV_rR(i) = +Rear_Lateral_load_transfer;     
    end             
                               
                               
                               
                               
