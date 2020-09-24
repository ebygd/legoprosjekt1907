%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F4_MathCalculations.m
% 
% Her programmerer du beregninger som skal gj?res
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------
% Definer parametre som brukes i beregningene. 
%------------------------------------------------
alfa1 = 0.3;
alfa2 = 0.1;
Kp = 1;
Ki = 2;
Kd = 1;

TurtallA(k-1) = 1/8 * VinkelHast(k-1);
