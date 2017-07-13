%%% This version is for the GUI and cannot be run on its own.
%%% To use the lapsim, run LapSimGUI.m

clc
close all
%% Load vehicle

Vehicle_definition

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
 
%% Run Results and Analysis Script

Laptime_analysis