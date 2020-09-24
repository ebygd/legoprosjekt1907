%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% F?lgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; close all               % Alltid lurt ? rydde opp f?rst
online=1;                      % Er du koplet til NXT eller ikke?
filename = 'P08_Turtallsregulering.mat'; % Navnet p? datafilen n?r online=0. 

P08_F1_Initialize
P08_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P08_F3_GetNewMeasurement
    P08_F4_MathCalculations    
    P08_F5_CalculateAndSetMotorPower
    P08_F6_PlottData   % kan flyttes til etter while-l?kka 
end
P08_F7_CloseMotorsAndSensors




