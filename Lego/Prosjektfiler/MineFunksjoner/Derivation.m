% LysDerivert(k-1) = Derivasjon(LysFiltrert_IIR(k-1:k)

function [Secant] = Derivation(FunctionValues, TimeStep)

Secant = (FunctionValues(2)-FunctionValues(1))/TimeStep;

end

% FunctionValues = [Value(k-1):Value(k)];
% TimeStep = Time(k)-Time(k-1);
 % Skal gjenskap delta y/delta x
% Secant = FunctionValues/TimeStep;
% FunctionValues = Value - PreValue;
% TimeStep = Time - PreTime;
