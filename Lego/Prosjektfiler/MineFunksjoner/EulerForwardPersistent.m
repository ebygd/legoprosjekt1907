% EulerForwardPersistent     
% Numerical integration using persistent variables

function [out] = EulerForwardPersistent(FunctionValue, TimeStep)

persistent IntValue  % intern variabel som funksjonen husker

% initialiserer IntValue (f?rste gangs kall)
if isempty(IntValue)
    IntValue(1)=0;
end

% beregner integralet
IntValue(2) = IntValue(1) + FunctionValue*TimeStep;

% flytter ny I til forrige I klar til neste kall
IntValue(1) = IntValue(2);

% sender ny I ut
out=IntValue(2);

end
