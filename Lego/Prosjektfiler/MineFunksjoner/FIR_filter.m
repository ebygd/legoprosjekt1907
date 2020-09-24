function [ValueOut] = FIR_filter(parameter, Value, CurrentIndex)

    if parameter > CurrentIndex

        parameter = CurrentIndex;

    end

    ValueOut = 1/parameter * sum(Value(CurrentIndex+1-parameter:CurrentIndex));
    
end

% parameter = m
% Value = Lys
% CurrentIndex = k