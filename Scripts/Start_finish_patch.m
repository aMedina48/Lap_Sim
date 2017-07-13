%% Patch ends of lap

Speed_profile = zeros(1, length(track.radius));

if Speed_profile_initial(length(track.radius)) < Speed_profile_initial(1)

Speed_profile(1) = Speed_profile_initial(length(track.radius));

    for i= 1:(length(track.radius)-1)

        v_1 = Speed_profile(i);

        dt = track.dx / v_1;

        v_2 = v_1 + (Calculate_Ax_Forward(Vehicle, v_1, track.radius(i)) * dt) ; 

        Speed_profile(i+1) = min(v_2, Speed_profile_initial(i));    
    end

else
    
    Speed_profile(length(track.radius)) = Speed_profile_initial(1);

    for i= length(track.radius):-1:2

        v_1 = Speed_profile(i);

        dt = track.dx / v_1;

        v_2 = v_1 + (Calculate_Ax_Forward(Vehicle, v_1, track.radius(i)) * dt) ; 

        Speed_profile(i-1) = min(v_2, Speed_profile_initial(i));
    end
    
    
end