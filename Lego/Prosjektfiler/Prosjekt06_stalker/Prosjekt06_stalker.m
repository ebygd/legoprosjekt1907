%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% F?lgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all; close all               % Alltid lurt ? rydde opp f?rst
online=1;                      % Er du koplet til NXT eller ikke?
filename = 'P06_stalker.mat'; % Navnet p? datafilen n?r online=0. 

P06_F1_Initialize
P06_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P06_F3_GetNewMeasurement
    P06_F4_MathCalculations    
    P06_F5_CalculateAndSetMotorPower
    P06_F6_PlottData
end

P06_F7_CloseMotorsAndSensors




