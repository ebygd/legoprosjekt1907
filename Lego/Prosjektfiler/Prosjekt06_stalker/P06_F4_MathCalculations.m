%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F4_MathCalculations.m
% 
% Her programmerer du beregninger som skal gj?res
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------
% Definer parametre som brukes i beregningene. 
%------------------------------------------------
alfa = 0.5;

AvstandIIR(k) = IIR_filter(alfa, Avstand(k), AvstandIIR(k-1));


e(k) = OnsketAvstand - AvstandIIR(k);
