%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F5_CalculateAndSetMotorPower.m
% 
% Beregner hvordan joystickdata skal brukes for 
% å få motorene til å bevege seg
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%------------------------------------------------
% Definer parametre til å beregne motorpådrag. 
%------------------------------------------------
a=0.8; 

%------------------------------------------------
% Beregner motorpådrag og lagrer i datavektor
%------------------------------------------------
PowerA(k) = a*JoyForover(k);


if online
    %------------------------------------------------
    % Setter powerdata mot EV3
    % Går ikke fortere enn -100 -> +100
    %------------------------------------------------
    motorA.Speed = PowerA(k);
    start(motorA)
else
    %------------------------------------------------
    % simulerer EV3-Matlab kommunikasjon i online=0
    %------------------------------------------------
    pause(0.01) 
end
