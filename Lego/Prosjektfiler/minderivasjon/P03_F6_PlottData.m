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

plot(Tid(1:k-1),LysDerivert(1:k-1)) % LysDerivert er beregnet for k-1 
xlabel('Tid [sek]')
titlel('LysDerivert')



%---------------------------------------------------
% tegn n? (viktig kommando)
%---------------------------------------------------
drawnow

