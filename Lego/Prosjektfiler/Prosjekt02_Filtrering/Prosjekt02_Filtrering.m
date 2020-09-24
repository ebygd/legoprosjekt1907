%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% F?lgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; %close all               % Alltid lurt ? rydde opp f?rst
online=0;                      % Er du koplet til NXT eller ikke?
filename = 'P02_f2Filtrering80ms.mat'; % Navnet p? datafilen n?r online=0. 

P02_F1_Initialize
P02_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P02_F3_GetNewMeasurement
    P02_F4_MathCalculations    
    P02_F5_CalculateAndSetMotorPower
%     P02_F6_PlottData
    pause(0.08)
%     delay;
end
  P02_F6_PlottData
% plotting
% P02_F7_CloseMotorsAndSensors




