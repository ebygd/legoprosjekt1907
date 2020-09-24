%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F4_MathCalculations.m
% 
% Her programmerer du beregninger som skal gj?res
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------
% Definer parametre som brukes i beregningene. 
%------------------------------------------------

Ts(k-1) = Tid(k) - Tid(k-1);
alfa = 0.5;
LysFiltrert_IIR(k) = IIR_filter(LysFiltrert_IIR(k-1), Lys(k), alfa);
LysDerivert(k-1) = (Lys(k)-Lys(k-1))/Ts(k-1);
