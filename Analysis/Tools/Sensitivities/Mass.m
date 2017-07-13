% This script performs mass sensitivity analysis

Vehicle_definition;                     % load vehicle 
Vehicle.m = 130;                        % intialize starting mass (kg)
finalMass = 180;                        % state final mass (kg)
iterSize = 1;                           % iteration size (in kg)
iter = (finalMass-Vehicle.m)/iterSize;  % calculate number of iterations

for k=1:iter                            % iterate through different masses
    SenseSim;
    Laptime_analysis;
    massSense(k) = Lap_time;
    Vehicle.m = Vehicle.m + iterSize;
    
end

 massSlope=gradient(massSense)/iterSize; % calculate slope at each point

