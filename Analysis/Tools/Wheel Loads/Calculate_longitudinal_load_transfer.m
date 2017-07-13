function [ OUT_deltaload ] = Calculate_longitudinal_load_transfer(Vehicle, Ax)
%This function calculates load transfer to individual front or rear wheels under a longitudinal acceleration. 

OUT_deltaload = (Vehicle.CG_height/Vehicle.wheelbase)*Vehicle.m*Ax;  

end

