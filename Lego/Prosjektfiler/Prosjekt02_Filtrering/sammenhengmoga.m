% Figur for som viser 
clear all
close all
mf = [60, 20, 12, 9, 7, 5]; %m verdiene vi fant
af = [0.1, 0.2, 0.3, 0.35, 0.43, 0.5]; %alfa verdiene vi fant

pausef = [0, 20, 40, 60, 80, 100]; % Pausene fra 0ms til 100ms

 
figure(1)

% title('m og alfa')

subplot(2,1,1)
plot(pausef,mf)
xlabel('Tidskritt [ms]')
% ylabel('m')
title('m')
% hold on

% figure(1)
subplot(2,1,2)
plot(pausef,af)
xlabel('Tidskritt [ms]')
% ylabel('alfa')
title('alfa')
% hold off