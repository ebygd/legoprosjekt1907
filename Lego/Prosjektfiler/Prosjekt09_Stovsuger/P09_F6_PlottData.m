%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

subplot(3,3,1)
plot(Tid(1:k),Lys(1:k)); 
title('Lys')
xlabel('Tid [sek]')

subplot(3,3,2)
plot(Tid(1:k), e(k))
title('Avvik')

% subplot(3,3,3)
% plot(Tid(1:k), eIIR(k));
% title('Avvik filtrert')


subplot(3,3,4)
plot(Tid(1:k),Avstand(1:k)); 
title('Avstand')
xlabel('Tid [sek]')


subplot(3,3,6)
plot(Tid(1:k),PowerA(1:k)); 
title('PowerA') 
xlabel('Tid [sek]')

subplot(3,3,7)
plot(Tid(1:k),VinkelPosMotorA(1:k)); 
title('VinkelPosMotorA')
xlabel('Tid [sek]')






%---------------------------------------------------
% tegn n? (viktig kommando)
%---------------------------------------------------
drawnow

