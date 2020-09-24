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

PowerA(k) = PotMeter(k);

PowerB(k) = a*b*Lys(k);
PowerC(k) = b*Bryter(k);


if online
    
    %------------------------------------------------
    % Setter powerdata mot EV3
    % G?r ikke fortere enn -100 -> +100 selv 
    % om powerverdi er st?rre
    % (slett de motorene du ikke bruker)
    %------------------------------------------------
    motorA.Speed = PowerA(k);
    motorB.Speed = PowerB(k);

    P_A(k) = Kp * e_TurtallA(k);
    I_A(k) = EulerForward(I_A(k-1), Ki*e_TurtallA(k-1), Ts(k-1));
    e_TurtallA_IIR(k) = IIR_filter(e_TurtallA_IIR(k-1), e_TurtallA(k), alfa2);
    D_A(k) = Derivation(Kd*e_TurtallA_IIR(k-1:k), Ts(k-1));
    PowerA(k) = P_A(k) + I_A(k) + D_A(k);
    
    start(motorA)
    start(motorB)


else
    %------------------------------------------------
    % simulerer EV3-Matlab kommunikasjon i online=0
    %------------------------------------------------
    pause(0.01) 
end
