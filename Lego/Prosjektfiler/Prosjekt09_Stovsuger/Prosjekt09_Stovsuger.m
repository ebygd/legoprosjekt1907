
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt09_.....
%
% Hensikten med programmet er ....  
% F?lgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; close all               % Alltid lurt ? rydde opp f?rst
online=1;                      % Er du koplet til NXT eller ikke?
filename = 'P09_Stovsuger.m'; % Navnet p? datafilen n?r online=0. 

P09_F1_Initialize
P09_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P09_F3_GetNewMeasurement
    P09_F4_MathCalculations    
    P09_F5_CalculateAndSetMotorPower
    P09_F6_PlottData   % kan flyttes til etter while-l?kka 
end
P09_F7_CloseMotorsAndSensors




