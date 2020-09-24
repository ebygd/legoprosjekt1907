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
%------------------------------------------------

PowerB(k) = a*b*Lys(k);


if online
    
    %------------------------------------------------
    % Setter powerdata mot EV3
    % G?r ikke fortere enn -100 -> +100 selv 
    % om powerverdi er st?rre
    % (slett de motorene du ikke bruker)
    %------------------------------------------------

else
    %------------------------------------------------
    % simulerer EV3-Matlab kommunikasjon i online=0
    %------------------------------------------------
    pause(0.01) 
end
