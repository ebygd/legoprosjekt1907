%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt01_.....
%
% Hensikten med programmet er ....  
% F?lgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; close all    ; clc           % Alltid lurt ? rydde opp f?rst
online=1;                       % Er du koplet til NXT eller ikke?
filename = 'P01_NumeriskIntegrasjon.mat'; % Navnet p? datafilen n?r online=0. 

P01_F1_Initialize
P01_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P01_F3_GetNewMeasurement
    P01_F4_MathCalculations    
    P01_F5_CalculateAndSetMotorPower
    P01_F6_PlottData   % kan flyttes til etter while-l?kka     
end
% P01_F6_PlottData   % kan flyttes til etter while-l?kka 
P01_F7_CloseMotorsAndSensors





