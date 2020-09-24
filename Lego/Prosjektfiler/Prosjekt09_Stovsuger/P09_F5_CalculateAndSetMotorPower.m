%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F5_CalculateAndSetMotorPower.m
% 
% Beregner hvordan motorene skal bevege seg
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a = 12; 
b = 2; 

e(k) = Lys(k) - Lys(k-1); %Forskjell i lys
PowerA(k) = a + b;
PowerB(k) = a - b;




% OnsketTurtallA(k) = b*e(k);
% OnsketTurtallB(k) = b*e(k);
% PowerA(k) = CalcA(motorA,OnsketTurtallA(k));
% PowerB(k) = CalcB(motorB,OnsketTurtallB(k));



if e(k) >= 20
    rygg = 1;
    snu = 1;
    PowerA(k);
    PowerB(k);
%     OnsketTurtallA(k);
%     OnsketTurtallB(k);
end

if Avstand <= 0.3210
    rygg = 1;
    snu = 1;
end


%------------------------------------------------
% Definer parametre til ? beregne motorp?drag. 
%------------------------------------------------


%------------------------------------------------
% Beregner motorp?drag og lagrer i datavektor
% (slett de motorene du ikke bruker og lag egen kode)
%------------------------------------------------



if rygg == 1
    PowerA(k) = -a;
    PowerB(k) = -a;
end

% fiks hvor lenge den skal rygge
if snu == 1
   PowerA(k) = a + b;
%    GyroAngle 
   PowerB(k) = a - b;
end



if online
    
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
