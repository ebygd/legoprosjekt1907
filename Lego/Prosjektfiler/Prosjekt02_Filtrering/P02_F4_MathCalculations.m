%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F4_MathCalculations.m
% 
% Her programmerer du beregninger som skal gj?res
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------
% Definer parametre som brukes i beregningene. 
%------------------------------------------------
m = 60;
alfa = 0.1;

% delay(1) = 0;
% delay(k) = (Potmeter(k) * 0.001) + 0.1;
% delay(k) = 0.06;

% N?r vi bruker funksjonene vi lagde for ? finne filtreringen:
% alfa(1) = 0;
% alfa(k) = -6.7.*delay(k).^2 + 4.61*delay(k) + 0.1;

% N?r vi bruker funksjonene vi lagde for ? finne filtreringen:
% m(1) = 0;
% m(k) = round(0.02/(1-exp(-0.0279*delay(k))));
 

%IIR_filter og FIR_filter:
LysFiltrert_FIR(k) = FIR_filter(m,  Lys, k);

% LysFiltrert_IIR(k) = IIR_filter(alfa, Lys(k), LysFiltrert_IIR(k-1));
