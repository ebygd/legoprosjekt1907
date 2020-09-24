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
% % % % % % 
% % % % % % subplot(3,3,1)
% % % % % % plot(Tid(1:k),Lys(1:k)); 
% % % % % % title('Lys')
% % % % % % xlabel('Tid [sek]')
% % % % % % 
% % % % % % 
% % % % % % subplot(3,3,3)
% % % % % % plot(Tid(1:k),Avstand(1:k)); 
% % % % % % title('Avstand')
% % % % % % xlabel('Tid [sek]')
% % % % % % % 
% % % % % % % subplot(3,3,4)
% % % % % % % plot(Tid(1:k),Vinkel(1:k)); 
% % % % % % % title('Vinkel')
% % % % % % % xlabel('Tid [sek]')
% % % % % % % % 
% % % % % % subplot(3,3,5)
% % % % % % plot(Tid(1:k),Vinkelhastighet(1:k)); 
% % % % % % title('Vinkelhastighet')
% % % % % % xlabel('Tid [sek]')
% % % % % % 
% % % % % % subplot(3,3,6)
% % % % % % plot(Tid(1:k),PowerA(1:k)); 
% % % % % % hold on
% % % % % % plot(Tid(1:k),PowerB(1:k)); 
% % % % % % title('PowerA') 
% % % % % % xlabel('Tid [sek]')
% % % % % % hold off
% % % % % % 
% % % % % % subplot(3,3,7)
% % % % % % plot(Tid(1:k),VinkelPosMotorA(1:k)); 
% % % % % % title('VinkelPosMotorA')
% % % % % % xlabel('Tid [sek]')
% % % % % % 
% % % % % % subplot(3,3,8)
% % % % % % plot(Tid(1:k),JoyForover(1:k)); 
% % % % % % title('JoyForover')
% % % % % % xlabel('Tid [sek]')


subplot(4,3,1)
plot(Tid(1:k), RefLys(1:k), Tid(1:k), Lys(1:k))
title('Referanse og Lys')

subplot(4,3,2)
plot(Tid(1:k),eL(1:k))
title('Avvik e(k)')

% subplot(4,3,3)
% plot(Tid(1:k), JoyForover(1:k), Tid(1:k), JoySide(1:k))
% title('JoyForover og JoySide')

subplot(4,3,4)
plot(Tid(1:k), RefLys(1:k), Tid(1:k),RefMean(1:k))
title('Middelverdi av Lys')

subplot(4,3,5)
plot(Tid(1:k), IAE(1:k))
title('IAE')

subplot(4,3,6)
plot(Tid(1:k), PowerA(1:k), Tid(1:k), PowerB(1:k))
title('PowerA og PowerB')

subplot(4,3,7)
plot(Tid(1:k), standsig(1:k))
title('Standardavvik av Lys')

subplot(4,3,8)
plot(Tid(1:k), ITAE(1:k));
title('ITAE')

subplot(4,3,9)
plot(Tid(1:k), TVA(1:k), Tid(1:k), TVB(1:k))
title('TV_A og TV_B')

subplot(4,3,10)
plot(Tid(1:k), varsig(1:k))
title('Variansen av Lys')

subplot(4,3,11)
plot(Tid(1:k), MAE(1:k))
title('MAE')







%---------------------------------------------------
% tegn n? (viktig kommando)
%---------------------------------------------------
drawnow

