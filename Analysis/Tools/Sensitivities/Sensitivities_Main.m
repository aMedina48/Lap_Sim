%% Intitalize Laptime

Vehicle_definition;
SenseSim;
Laptime_analysis;
time = Lap_time;

%% Initialize Increases

massIncrease = 200;
CLIncrease = 5;
CDIncrease = 5;
powerIncrease = 15000;

%% Mass Sensitivity

massOld = Vehicle.m;
Vehicle.m = Vehicle.m + massIncrease;

SenseSim;
Laptime_analysis;

massTime = Lap_time;
dtdm = (massTime - time)/massIncrease;
massSpeed = Speed_profile;
Vehicle.m = massOld;

%% CL Sensitivity

CLOld = Vehicle.CL;
Vehicle.CL = Vehicle.CL + CLIncrease;

SenseSim;
Laptime_analysis;

CLTime = Lap_time;
dtdCL = (CLTime - time)/CLIncrease;
CLSpeed = Speed_profile;
Vehicle.CL = CLOld;

%% CD Sensitivity

CDOld = Vehicle.CD;
Vehicle.CD = Vehicle.CD + CDIncrease;

SenseSim;
Laptime_analysis;

CDTime = Lap_time;
dtdCD = (CDTime - time)/CDIncrease;
CDSpeed = Speed_profile;
Vehicle.CD = CDOld;

%% Power Sensitivity

powerOld = Vehicle.power;
Vehicle.power = Vehicle.power + powerIncrease;

SenseSim;
Laptime_analysis;

powerTime = Lap_time;
dtdp = (powerTime - time)/powerIncrease;
powerSpeed = Speed_profile;
Vehicle.power = powerOld;

