%% Acceleration Pass (Forward)


    Throttle_pass_velocity = zeros(1, length(track.radius)); %Pre-allocating array size
    
    Throttle_pass_velocity(1) = Apex_speed(1); %Initializing Throttle_pass_velocity array.

for i = 1:length(track.radius)-1
      
    v_1 = Throttle_pass_velocity(i);
    
    dt = track.dx / v_1; 
    
    v_2 = v_1 + (Calculate_Ax_Forward(Vehicle, v_1, track.radius(i)) * dt);     %Calculates that next speed based on available longitudinal acceleration
        
    Throttle_pass_velocity(i+1) = min (v_2, Apex_speed(i+1));                   %Takes minimum of Apex Speed and calculated speed
           
end