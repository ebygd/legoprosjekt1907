%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F6_PlottData.m
% 
% Denne plasseres enten i while-løkka eller rett etterpå
%
% Husk syntaksen: plot(Tid(1:k),data(1:k))  
% Dette for å få samme opplevelse når online=0 siden
% hele datasettet (1:end) eksisterer i den lagrede .mat fila
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% start=32;
% slutt=110;
% DerivertMean=ones(1:LysFiltrertDerivert).*(mean(LysFiltrertDerivert));
% DerivertMean=repmat((mean(LysFiltrertDerivert)),1,numel(LysFiltrertDerivert));
figure(fig1)

subplot(3,1,1)          % Første plot e lysmålinga med og uten filter
plot(Tid(1:k-1),Lys(1:k-1));  % Kan d skrives om som plot
hold on           %(Tid(1:k),Lys(1:k),Tid(1:k), LysFiltrert_IIR(1:k));
plot(Tid(1:k-1), LysFiltrert_IIR(1:k-1),'r');
hold off
title('Sinusfunksjon') %'Lys LysFIltrert IIR alfa=0.03'
xlabel('Tid [sek]')
legend('Lys','LysFiltrert');

subplot(3,1,2)              % Andre e deriverte av lysmålinga. stygt
plot(Tid(1:k-1), LysDerivert(1:k-1)) % LysDerivert er beregnet for k-1
xlabel('Tid [sek]')
title ('LysDerivert')

subplot(3,1,3)         % Tredje, siste e deriverte av den filtrerte
plot(Tid(1:k-1),LysFiltrertDerivert(1:k-1),'r'); % lysmålinga. vakkert.
title('LysFiltrertDerivert')
xlabel('Tid [sek]')

% plot(Tid(start:slutt-1),Lys(start:slutt-1));  % Kan d skrives om som plot
% hold on           %(Tid(1:k),Lys(1:k),Tid(1:k), LysFiltrert_IIR(1:k));
% plot(Tid(start:slutt-1), LysFiltrert_IIR(start:slutt-1),'r');
% hold off
%  title('Lineær linje') % Lys LysFIltrert IIR alfa=0.03
% xlabel('Tid [sek]')
% legend('Lys','LysFiltrert');
% 
% subplot(3,1,2)              % Andre e deriverte av lysmålinga. stygt
% plot(Tid(start:slutt-1), LysDerivert(start:slutt-1)) % LysDerivert er beregnet for k-1
% xlabel('Tid [sek]')
% title ('LysDerivert')
% 
% subplot(3,1,3)         % Tredje, siste e deriverte av den filtrerte
% plot(Tid(start:slutt-1),LysFiltrertDerivert(start:slutt-1),'r'); % lysmålinga. vakkert.
% title('LysFiltrertDerivert')
% xlabel('Tid [sek]')
% hold on
% plot(Tid(start:slutt-1),DerivertMean(start:slutt-1));
% hold off





% subplot(3,3,2)
% plot(Tid(1:k),Bryter(1:k)); 
% title('Bryter')
% xlabel('Tid [sek]')
% 
% subplot(3,3,3)
% plot(Tid(1:k),Avstand(1:k)); 
% title('Avstand')
% xlabel('Tid [sek]')
% 
% subplot(3,3,4)
% plot(Tid(1:k),Vinkel(1:k)); 
% title('Vinkel')
% xlabel('Tid [sek]')
% 
% subplot(3,3,5)
% plot(Tid(1:k),Vinkelhastighet(1:k)); 
% title('Vinkelhastighet')
% xlabel('Tid [sek]')
% 
% subplot(3,3,6)
% plot(Tid(1:k),PowerA(1:k)); 
% title('PowerA') 
% xlabel('Tid [sek]')
% 
% subplot(3,3,7)
% plot(Tid(1:k),VinkelPosMotorA(1:k)); 
% title('VinkelPosMotorA')
% xlabel('Tid [sek]')
% 
% subplot(3,3,8)
% plot(Tid(1:k),JoyForover(1:k)); 
% title('JoyForover')
% xlabel('Tid [sek]')



%---------------------------------------------------
% tegn nå (viktig kommando)
%---------------------------------------------------
drawnow

