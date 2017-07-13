clearvars;
clc;

% Load Sensitivites
Sensitivities_Main;

% Fix track length (why is this fucked)
xValues = length(track.x);
track.x(xValues+1)=xValues;


%% Plot

figure
plot(track.x, Speed_profile,track.x,massSpeed,track.x,CLSpeed,track.x,CDSpeed,track.x,powerSpeed)

title ('Variation of Speed profiles')
xlabel ('Distance (m)')
ylabel ('Speed (m/s)')
legend('Original speed','Mass + 10kg','CL + 0.1', 'CD + 0.1', 'Power + 5kW', 'Location', 'Southeast')

%% Table of dt/d

Variables = {'Mass (kg)', 'CL', 'CD', 'Power (W)','Original'};
Variation = [massIncrease;CLIncrease;CDIncrease;powerIncrease;0];
Derivative = [dtdm;dtdCL;dtdCD;dtdp;0];
LapTime = [massTime;CLTime;CDTime;powerTime;time];

T= table(Variation, Derivative, LapTime, 'RowNames', Variables)