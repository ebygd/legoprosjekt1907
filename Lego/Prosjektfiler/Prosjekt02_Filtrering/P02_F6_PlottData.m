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
% % % % % % % % % % % % % % % % % 
% alltid ha denne
% subplot(1,2,1)
plot(Tid(1:k),Lys(1:k)); 
title('Lysfiltrert pause 80ms')
xlabel('Tid [sek]')
hold on
% % % % % % % % % % % % % % % % % % % % % % % % 
% subplot(1,3,1)
% plot(Tid(1:k),Lys(1:k)); 
% title('Lys')
% xlabel('Tid [sek]')
% hold on

% % % % % % % % % % % % % % % % % % % % % % 
% For subplots med alfa, m og Ts
% subplot(3,1,1)
% plot(Tid(1:k), delay(1:k));
% title('forsinkelse')
% xlabel('Tid')
% 
% subplot(3,1,2)
% plot(Tid(1:k), alfa(1:k));
% title('alfa')
% xlabel('Tid')
% 
% subplot(3,1,3)
% plot(Tid(1:k), m(1:k));
% title('m')
% xlabel('Tid')
% % % % % % % % % % % % % % % % % % % % % 

% subplot(1,3,3)



% % % % % % % % % % % % % % % % % % % % % % 
% ORGINAL
% % subplot(1,2,2)
% plot(Tid(1:k), LysFiltrert_FIR(1:k), 'r');
% plot(Tid(1:k), LysFiltrert_IIR(1:k), 'g');
% title('Lysfiltrert pause 80ms')
% xlabel('Tid [sek]')
% legend('Lys', 'LysFiltrert FIR m=60', 'LysFiltrert IIR a=0.1')
% hold off
% % % % % % % % % % % % % % % % % % % % % % 
% Bare IIR:
% plot(Tid(1:k), LysFiltrert_IIR(1:k), 'g');
% title('Lysfiltrert pause 80ms')
% xlabel('Tid [sek]')
% legend('Lys', 'LysFiltrert IIR a=0.1')
% hold off

 plot(Tid(1:k), LysFiltrert_FIR(1:k), 'r');
title('Lysfiltrert pause 80ms')
xlabel('Tid [sek]')
legend('Lys', 'LysFiltrert FIR m=60')
hold off


% % % % % % % % % % % % % % % % % % % % % % 
% N?r a = 0 og a = 1
% plot(Tid(1:k), LysFiltrert_IIR(1:k), 'g');
% plot(Tid(1:k), LysFiltrert_IIR2(1:k), 'r');
% title('Lysfiltrert pause 0ms')
% xlabel('Tid [sek]')
% legend('Lys', 'LysFiltrert IIR a=0', 'LysFiltrert IIR a=1')
% hold off
% subplot(3,3,2)
% plot(Tid(1:k),Bryter(1:k)); 
% title('Bryter')
% xlabel('Tid [sek]')
% 
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 



%---------------------------------------------------
% tegn n? (viktig kommando)
%---------------------------------------------------
drawnow

