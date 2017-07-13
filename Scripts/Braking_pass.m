%% Braking pass (backwards)

Braking_pass_velocity = zeros(1, length(track.radius));

Braking_pass_velocity(length(track.radius))=Apex_speed(length(track.radius));

for i = length(track.radius):-1:2
    
    v_1 = Braking_pass_velocity(i);
    
    dt = track.dx / v_1;
    
    v_2 = v_1 + Calculate_Ax_Backwards(Vehicle, v_1, track.radius(i)) * dt;
       
    Braking_pass_velocity(i-1) = min(v_2, Apex_speed(i-1));  
end