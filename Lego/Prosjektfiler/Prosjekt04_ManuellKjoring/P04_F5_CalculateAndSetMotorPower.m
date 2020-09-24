%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F5_CalculateAndSetMotorPower.m
% 
% Beregner hvordan motorene skal bevege seg
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%------------------------------------------------
% Definer parametre til ? beregne motorp?drag. 
%------------------------------------------------
a = 1.2;

PowerA(k) = a*JoyForover(k) + JoySide(k);
PowerB(k) = a*JoyForover(k) - JoySide(k);

eA(k) = Lys(1) - PowerA(k);
eB(k) = Lys(1) - PowerB(k);


MAE(k) = (1/k)*IAE(k);

uA(k) = PowerA(k);
uB(k) = PowerB(k);

TVA(k) = sum(abs(uA(k)-uA(k-1)));
TVB(k) = sum(abs(uB(k)-uB(k-1)));

%------------------------------------------------
% Beregner motorp?drag og lagrer i datavektor
% (slett de motorene du ikke bruker og lag egen kode)
%------------------------------------------------

% PowerB(k) = PowerA(k);


% PowerC(k) = a*b*Lys(k);
% PowerC(k) = b*Bryter(k);

% % % % % % % % % % % % % % % % % % % % % % 
% FOR AT KNAPPENE SKAL FUNKE:
if online
%     
%     if Butt3 == 1
%     
%      counter = counter + 5;
%   
%     
%     end
%     if Butt4 == 1
%     
%      counter = counter - 5;
%   
%     
%     end
% hastighet = counter;
% 
% buttons = button(joystick);
% if Butt5 == 1
%     
%     hastighet = 50;
%     
% elseif Butt2 == 1
%     
%     hastighet = 30;
%     
% end
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
%     motorC.Speed = PowerC(k);
    
    start(motorA)
    start(motorB)
%     start(motorC)

else
    %------------------------------------------------
    % simulerer EV3-Matlab kommunikasjon i online=0
    %------------------------------------------------
    pause(0.01) 
end
