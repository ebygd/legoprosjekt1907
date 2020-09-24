% figure(1)
% plot(Tid(1:k),Lys(1:k)); 
% title('Lys')
% xlabel('Tid [sek]')
% hold on
% 
% plot(Tid(1:k), LysFiltrert_FIR(1:k), 'r');
% 
% title('Lysfiltrert pause 60ms')
% xlabel('Tid [sek]')
% legend('Lys', 'LysFiltrert FIR m=60')
% hold off
% % % 


filename = 'P02_f2Filtrering80ms.mat';
online = 0;

P02_F1_Initialize
P02_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P02_F3_GetNewMeasurement
    P02_F4_MathCalculations    
    P02_F5_CalculateAndSetMotorPower
end


plot(Tid1(1:k),Lys1(1:k)); 
title('Lys')
xlabel('Tid [sek]')
hold on


filename = 'P02_f2Filtrering0ms.mat';
subplot(3,2,1)
plot(Tid1(1:k), LysFiltrert_FIR(1:k), 'r');
title('Lysfiltrert pause 0ms')
xlabel('Tid [sek]')


filename = 'P02_f2Filtrering20ms.mat';
subplot(3,2,2)
plot(Tid2(1:k), LysFiltrert_FIR(1:k), 'r');
title('Lysfiltrert pause 20ms')
xlabel('Tid [sek]')


filename = 'P02_f2Filtrering40ms.mat';
subplot(3,2,3)
plot(Tid3(1:k), LysFiltrert_FIR(1:k), 'r');
title('Lysfiltrert pause 40ms')
xlabel('Tid [sek]')


filename = 'P02_f2Filtrering60ms.mat';
subplot(3,2,4)
plot(Tid4(1:k), LysFiltrert_FIR(1:k), 'r');
title('Lysfiltrert pause 60ms')
xlabel('Tid [sek]')


filename = 'P02_f2Filtrering80ms.mat';
subplot(3,2,5)
plot(Tid5(1:k), LysFiltrert_FIR(1:k), 'r');
title('Lysfiltrert pause 80ms')
xlabel('Tid [sek]')


filename = 'P02_f2Filtrering100ms.mat';
subplot(3,2,6)
plot(Tid6(1:k), LysFiltrert_FIR(1:k), 'r');

title('Lysfiltrert pause 100ms')
xlabel('Tid [sek]')














% % % % % % % % % 
% % % % % % % % % 
% % % % % % % % % LysFiltrert_FIR(1) = Lys1(1);
% % % % % % % % % m = 60;
% % % % % % % % % LysFiltrert_FIR(k) = FIR_filter(m,  Lys1, k);
% % % % % % % % % LysFiltrert_FIR(k) = FIR_filter(m,  Lys2, k);
% % % % % % % % % LysFiltrert_FIR(k) = FIR_filter(m,  Lys3, k);
% % % % % % % % % LysFiltrert_FIR(k) = FIR_filter(m,  Lys4, k);
% % % % % % % % % LysFiltrert_FIR(k) = FIR_filter(m,  Lys5, k);
% % % % % % % % % LysFiltrert_FIR(k) = FIR_filter(m,  Lys6, k);
% % % % % % % % % 
% % % % % % % % % 
% % % % % % % % % subplot(3,2,1)
% % % % % % % % % plot(Tid1,Lys1)
% % % % % % % % % plot(Tid1(1:k), LysFiltrert_FIR(1:k), 'r');
% % % % % % % % % hold on
% % % % % % % % % subplot(3,2,2)
% % % % % % % % % plot(Tid2,Lys2)
% % % % % % % % % plot(Tid2(1:k), LysFiltrert_FIR(1:k), 'r');
% % % % % % % % % subplot(3,2,3)
% % % % % % % % % plot(Tid3,Lys3)
% % % % % % % % % plot(Tid3(1:k), LysFiltrert_FIR(1:k), 'r');
% % % % % % % % % subplot(3,2,4)
% % % % % % % % % plot(Tid4,Lys4)
% % % % % % % % % plot(Tid4(1:k), LysFiltrert_FIR(1:k), 'r');
% % % % % % % % % subplot(3,2,5)
% % % % % % % % % plot(Tid5,Lys5)
% % % % % % % % % plot(Tid5(1:k), LysFiltrert_FIR(1:k), 'r');
% % % % % % % % % subplot(3,2,6)
% % % % % % % % % plot(Tid6,Lys6)
% % % % % % % % % plot(Tid6(1:k), LysFiltrert_FIR(1:k), 'r');