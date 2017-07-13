%% Results & Analysis


%% Basic Plotting

plot(Apex_speed);
hold on;
plot(Throttle_pass_velocity);
hold on;
plot(Braking_pass_velocity);


%% Plot Final Speed Profile


title ('Speed profile')
xlabel ('Distance (m)')
ylabel ('Speed (m/s)')


figure(2);
plot(Distance, Apex_speed);
ylim([0, 50]);
title ('Speed profile')
xlabel ('Distance (m)')
ylabel ('Speed (km/h)')
hold on 
plot(Distance, Throttle_pass_velocity, 'r')
hold on
plot(Distance, Braking_pass_velocity, 'g')
hold off

%% Plot Lateral Acceleration 

figure(3)
plot(Lateral_acceleration);
title ('Lateral Acceleration Profile')
xlabel ('Distance (m)')
ylabel ('G-Force (g)')

%% Plot Longitudinal Acceleration 

figure(4)
plot(1:length(Longitudinal_acceleration),Longitudinal_acceleration);
ylim([-2, 2]);
title ('Longitudinal Acceleration Profile')
xlabel ('Distance (m)')
ylabel ('G-Force (g)')

