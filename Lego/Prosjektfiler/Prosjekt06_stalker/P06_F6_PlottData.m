%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F6_PlottData.m
% 
% Denne plasseres enten i while-l?kka eller rett etterp?
%
% Husk syntaksen: plot(Tid(1:k),data(1:k))  
% Dette for ? f? samme opplevelse n?r online=0 siden
% hele datasettet (1:end) eksisterer i den lagrede .mat fila
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(fig1)

subplot(2,2,1)
plot(Tid(1:k), Avstand(1:k), Tid(1:k), AvstandIIR(1:k), Tid(1:k), ones(1,k) * OnsketAvstand);
title('Avstand (b), AvstandIIR (r), Onsket avstand (k)')
xlabel('Tid [sek]')

subplot(2,2,2)
plot(Tid(1:k), e(1:k));
title('Avviket e(k)')
xlabel('Tid [sek]')


subplot(2,2,3)
plot(Tid(1:k), OnsketTurtallA(1:k), Tid(1:k), PowerA(1:k));
title('Onsket Turtall motor A og beregnet PowerB')
xlabel('Tid [sek]')


subplot(2,2,4)
plot(Tid(1:k), OnsketTurtallB(1:k), Tid(1:k), PowerB(1:k));
title('Onsket Turtall motor B og beregnet PowerB')
xlabel('Tid [sek]')




%---------------------------------------------------
% tegn n? (viktig kommando)
%---------------------------------------------------
drawnow

