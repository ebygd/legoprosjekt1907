function [IIR] = IIR_filter(alfa, Value, PrevIIR)

IIR = alfa*Value+(1-alfa)*PrevIIR;

end

% alfa 
% Value = Lys(k)
% PreIIR = LysFiltrert_IIR(k-1)