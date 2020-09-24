%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% F?lgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; close all               % Alltid lurt ? rydde opp f?rst
online=0;                      % Er du koplet til NXT eller ikke?
filename = 'automatiskkjoring22.mat'; % Navnet p? datafilen n?r online=0. 

P05_F1_Initialize
P05_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P05_F3_GetNewMeasurement
    P05_F4_MathCalculations    
    P05_F5_CalculateAndSetMotorPower
  
end
P05_F6_PlottData 
P05_F7_CloseMotorsAndSensors

