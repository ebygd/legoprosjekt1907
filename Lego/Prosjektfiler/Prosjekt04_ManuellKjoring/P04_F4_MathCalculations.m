    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % P0X_F4_MathCalculations.m
    % 
    % Her programmerer du beregninger som skal gj?res
    %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %------------------------------------------------
    % Definer parametre som brukes i beregningene. 
    %------------------------------------------------
    Vinkelhastighet(k) = Derivation(VinkelPosMotorA(k)-VinkelPosMotorA(k-1), Tid(k)-Tid(k-1));

    Ts = Tid(k) - Tid(k-1);

    eL(k) = Lys(1) - Lys(k);
    RefLys(k) = Lys(1);
    middelverdi_Lys = mean(Lys(1:k));
    RefMean(k) = middelverdi_Lys;

    IAE(k) = EulerForward(IAE(k-1),(abs(eL(k))), Ts); 

    ITAE(k) = EulerForward(ITAE(k-1), Tid(k) * abs(eL(k)), Ts); 

    standsig(k) = std(Lys);
    varsig(k) = var(Lys(1:k));
