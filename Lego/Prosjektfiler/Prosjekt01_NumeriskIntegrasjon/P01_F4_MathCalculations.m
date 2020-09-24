%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F4_MathCalculations.m
% 
% Her programmerer du beregninger som skal gj?res
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------
% Definer parametre som brukes i beregningene. 
%------------------------------------------------

Ts(k) = Tid(k) - Tid(k-1);

LysAvvik(k) = Lys(k) - nullpunkt;

% Integrerer med Eulers metode
LysIntegrertPersistent(k) = EulerForwardPersistent(LysAvvik(k-1),Ts(k-1));