%% Calculate total time of lap and distance vector

%Calculates the total lap time in seconds.

Lap_time = 0;
Distance = zeros(1, length(track.radius));

for i=1:length(track.radius)
    
    Lap_time = Lap_time + Calculate_time(Speed_profile(i), track.dx); 
    Distance(i) = track.dx * i;    
    
end

