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

 
% % % % % % subplot(1,2,2)
% % % % % % plot(Tid(1:k),PowerA(1:k)); 
% % % % % % title('PowerA') 
% % % % % % xlabel('Tid [sek]')


subplot(3,1,1)
plot(Tid(1:k),Lys(1:k)); 
title('Lys')
xlabel('Tid [sek]')

subplot(3,1,2)
plot(Tid(1:k),LysAvvik(1:k))
xlabel('Tid [sek]')
title('LysAvvik')

subplot(3,1,3)
plot(Tid(1:k), LysIntegrertPersistent(1:k))
xlabel('Tid [sek]')
title('LysIntegrert (integralet av LysAvvik)')




%---------------------------------------------------
% tegn n? (viktig kommando)
%---------------------------------------------------
drawnow

