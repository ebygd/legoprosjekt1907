%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt00_TestOppkopling
%
% Hensikten med programmet er teste at systemet virker p? NXT
% F?lgende sensorer brukes: lyssensor og motor A
% Programmet beregner ingenting.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clear; close all       % Alltid lurt ? rydde opp f?rst
online=1;              % Er du koplet til NXT eller ikke?
filename = 'P00_DataNavn.mat'; % Navnet p? datafilen n?r online=0. 

P00_F1_Initialize
P00_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P00_F3_GetNewMeasurement
    P00_F4_MathCalculations    
    P00_F5_CalculateAndSetMotorPower
    P00_F6_PlottData   % kan flyttes til etter while-l?kka 
end
P00_F7_CloseMotorsAndSensors




