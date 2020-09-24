%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F5_CalculateAndSetMotorPower.m
% 
% Beregner hvordan motorene skal bevege seg
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%------------------------------------------------
% Definer parametre til ? beregne motorp?drag. 
%------------------------------------------------
a = 1.2;  % dummyfaktorer
b = 20.4;

%------------------------------------------------
% Beregner motorp?drag og lagrer i datavektor
% (slett de motorene du ikke bruker og lag egen kode)
%-----------------------------------------------
% hastighet = 0;

% % % Tror dette blir feil n?r online = 0, pr?ver ? flytte inn i if online
% l?kka:::
% if Butt3 == 1
%     
%     counter = counter + 5;
%   
%     
% end
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
% % % % % % % % % % PowerA(k) = hastighet;
%OG% PowerA(k) = a*JoyForover(k);
% PowerB(k) = a*b*Lys(k);
% PowerC(k) = b*Bryter(k);

if online
    
    if Butt3 == 1
    
    counter = counter + 5;
  
    
    end
hastighet = counter;

buttons = button(joystick);
if Butt5 == 1
    
    hastighet = 50;
    
elseif Butt2 == 1
    
    hastighet = 30;
    
end
PowerA(k) = hastighet;
    %------------------------------------------------
    % Setter powerdata mot EV3
    % G?r ikke fortere enn -100 -> +100 selv 
    % om powerverdi er st?rre
    % (slett de motorene du ikke bruker)
    %------------------------------------------------
%     motorA.Speed = PowerA(k);
%     motorB.Speed = PowerB(k);
%     motorC.Speed = PowerC(k);
    
%     start(motorA)
%     start(motorB)
%     start(motorC)

else
    %------------------------------------------------
    % simulerer EV3-Matlab kommunikasjon i online=0
    %------------------------------------------------
    pause(0.01) 
end
