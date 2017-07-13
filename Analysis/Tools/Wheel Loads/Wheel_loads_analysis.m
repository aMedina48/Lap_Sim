%% Wheel load analysis

%% Calculate lateral acceleration during lap

Lateral_acceleration_analysis

%% Calculate Longitudinal acceleration during lap

Longitudinal_acceleration_analysis


%% Run load transfer calculations

Longitudinal_load_transfer_calculation;
Lateral_load_transfer_calculation;

%% Wheel loads

for i=1:length(track.radius)

%Front wheel loads
WL_FL(i) = Vehicle.m_FL + LateralV_FL(i) + LongitudinalV_FL(i) + (Lift(Vehicle, Speed_profile(i))/4) ; %#ok<*SAGROW>
WL_FR(i) = Vehicle.m_FR + LateralV_FR(i) + LongitudinalV_FR(i) + (Lift(Vehicle, Speed_profile(i))/4);

%Rear wheel loads
WL_RL(i) = Vehicle.m_FL + LateralV_FL(i) + LongitudinalV_FL(i) + (Lift(Vehicle, Speed_profile(i))/4);
WL_RR(i) = Vehicle.m_FR + LateralV_FR(i) + LongitudinalV_FR(i) + (Lift(Vehicle, Speed_profile(i))/4);

end