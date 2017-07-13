%% Calculate Lateral acceleration in g throughout lap

for i=1:length(track.radius)
    
   Lateral_acceleration(i) = ((Speed_profile(i)^2)/track.radius(i))/9.81; %#ok<SAGROW>
    
end