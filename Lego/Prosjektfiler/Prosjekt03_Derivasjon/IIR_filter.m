function [ FilteredValue] = IIR_filter(OldFilteredValue, Measurment , Parameter )

FilteredValue =  Parameter*Measurment+(1-Parameter)*OldFilteredValue;


end 
% Measurment = Value = Lys(k)
% OldFilteredValue = PrevValue = LysFlitrert_IIR(k-1)
%
% LysFiltrert_IIR(k) = alfa*Lys(k)+(1-alfa)*LysFiltrert_IIR(k-1);

%  Fra Erlend
% function [ValueOut] = IIR_filter(alfa, Value, PrevValue)
% 
% ValueOut = alfa*Value+(1-alfa)*PrevValue;
% 
% end
