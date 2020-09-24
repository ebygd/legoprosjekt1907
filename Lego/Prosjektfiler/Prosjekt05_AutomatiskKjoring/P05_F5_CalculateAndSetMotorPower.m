%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F5_CalculateAndSetMotorPower.m
% 
% Beregner hvordan motorene skal bevege seg
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%------------------------------------------------
% Definer parametre til ? beregne motorp?drag. 
%------------------------------------------------
a = 12; 
b = 2;

PowerA(k) = a + b*eL(k);
PowerB(k) = a - b*eL(k);

eA(k) = Lys(1) - PowerA(k);
eB(k) = Lys(1) - PowerB(k);


MAE(k) = (1/k)*IAE(k);

uA(k) = PowerA(k);
uB(k) = PowerB(k);

TVA(k) = TVA(k-1) + abs(uA(k)-uA(k-1));
TVB(k) = TVB(k-1) + abs(uB(k)-uB(k-1));
%------------------------------------------------
% Beregner motorp?drag og lagrer i datavektor
% (slett de motorene du ikke bruker og lag egen kode)
%------------------------------------------------

% % % % % % % % % % % % % % % % % % % % % % 
if online
    
    if Butt3 == 1
    
     counter = counter + 5;
  
    
    end
    if Butt4 == 1
    
     counter = counter - 5;
  
    
    end
hastighet = counter;

buttons = button(joystick);
if Butt5 == 1
    
    hastighet = 50;
    
elseif Butt2 == 1
    
    hastighet = 30;
    
end
% PowerA(k) = hastighet;
% PowerB(k) = hastighet;
% % % % % % % % % % % % % % % % % % % 
    %------------------------------------------------
    % Setter powerdata mot EV3
    % G?r ikke fortere enn -100 -> +100 selv 
    % om powerverdi er st?rre
    % (slett de motorene du ikke bruker)
    %------------------------------------------------
    motorA.Speed = PowerA(k);
    motorB.Speed = PowerB(k);
    
    start(motorA)
    start(motorB)

else
    %------------------------------------------------
    % simulerer EV3-Matlab kommunikasjon i online=0
    %------------------------------------------------
    pause(0.01) 
end
