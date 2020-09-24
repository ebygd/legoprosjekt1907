% LysDerivert(k-1) = Derivasjon(LysFiltrert_IIR(k-1:k)

function [Secant] = Derivation(FunctionValues, TimeStep)

% FunctionValues = [Value(k-1):Value(k)];
% TimeStep = Time(k)-Time(k-1);

Secant = FunctionValues/TimeStep;

end

% Value(k) = Lysfiltrert(k)
% Time(k) = Tid(k)
% Vi får ut en sekant, ettersom delta x (Ts) ikke blir null, men har en verdi.
% Sekanten e altså en tilnærming til tangenten. Jo større Ts, dess
% dårligere tinærming
% Fortsatt veldig usikker på ka dette e
% og ka d ska bety
% 



















































% nice.