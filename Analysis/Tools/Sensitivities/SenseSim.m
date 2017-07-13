%% Load Track 

LapSimulation_track  

%% Calculate Apex speeds

Apex_speed = Max_cornering_speed(Vehicle, track.radius);

%% Calculate speed profile on throttle pass

Acceleration_pass

%% Calculate speed profile on braking pass

Braking_pass

%% Combine Speed Throttle and Braking Speed Profiles

Speed_profile_initial = min(Throttle_pass_velocity, Braking_pass_velocity);

%% Fix ends of lap

Start_finish_patch
