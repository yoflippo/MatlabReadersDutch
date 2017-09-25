%% Data inladen
filenaam = 'stapdata.txt';
load(filenaam);
tijdsas = stapdata(:,1);
links   = stapdata(:,2);
rechts  = stapdata(:,3);

%% Data plotten
figure
hold on
plot(tijdsas,links,'r');
plot(tijdsas,rechts,'g');
hold off

% Bepaal eerst of het grote getal de stap of de zwaaifase is.
% Bepaal voor jezelf waar de toe-off en heel strike momenten zijn

%% Data aanpassen
% we willen het signaal aanpassen zodat we alleen waarden hebben die of 0
% of 1 zijn.
% we nemen aan dat de lengte van de vector links = rechts.
for nVal = 1:length(links)
    if links(nVal) < 3000
        links2(nVal) = 0;
    else
        links2(nVal) = 1;
    end
    if rechts(nVal) < 3000
        rechts2(nVal) = 0;
    else
        rechts2(nVal) = 1;
    end
end

plot(tijdsas,links2);
title('Voetstapdata linkerbeen')
xlabel('Tijd (seconde)');
ylabel('Detectie van een voetstap');
figure; %nieuw figuur aanmaken voor een plot
plot(tijdsas,rechts2,'r');
title('Voetstapdata rechterbeen')
xlabel('Tijd (seconde)');
ylabel('Detectie van een voetstap');