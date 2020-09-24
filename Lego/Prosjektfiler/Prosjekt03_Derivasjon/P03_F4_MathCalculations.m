%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F4_MathCalculations.m
% 
% Her programmerer du beregninger som skal gj?res
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------
% Definer parametre som brukes i beregningene. 
%------------------------------------------------

LysFiltrert_IIR(1) = Lys(1);


Ts(k-1) = Tid(k)-Tid(k-1);   % beregn tidskritt i sekund


alfa = 0.03;                  % alpha i IIR-filter
LysFiltrert_IIR(k) = alfa*Lys(k)+(1-alfa)*LysFiltrert_IIR(k-1);


LysDerivert(k-1) = (Lys(k)-Lys(k-1))/Ts(k-1);         % Avhengig av neste m?ling
LysFiltrertDerivert(k-1) = (LysFiltrert_IIR(k)-LysFiltrert_IIR(k-1))/Ts(k-1);   % Avhengig av forrgie
% m?ling

