%% Data inladen en variabelen definieren
filenaam = 'zwaartepuntdata.txt';
data = load(filenaam);

hoofdx      = data(:,1);
hoofdy      = data(:,2);
rompx       = data(:,3);
rompy       = data(:,4);
bovenbeenx  = data(:,5);
bovenbeeny  = data(:,6);
onderbeenx  = data(:,7);
onderbeeny  = data(:,8);
voetx       = data(:,9);
voety       = data(:,10);

massaVoet      = 4;
massaOnderbeen = 14;
massaBovenbeen = 20;
massaRomp      = 40;
massaHoofd     = 9;


%% Plot de data
figure
hold on
plot(hoofdx,hoofdy,'r');
plot(rompx,rompy,'b');
plot(bovenbeenx,bovenbeeny,'g');
plot(onderbeenx,onderbeeny,'m');
plot(voetx,voety,'k');
hold off
xlabel('X-coordinaat [cm]')
ylabel('Y-coordinaat [cm]');
axis equal


%% Plot de data
nMarkers = 5; % het aantal markers
figure
hold on
for teller = 1:nMarkers
    plot(data(:,2*(teller-1)+1),data(:,2*teller),'o');
end
hold off
xlabel('X-coordinaat [cm]')
ylabel('Y-coordinaat [cm]');
axis equal


%% Zwaartepunt onhandig
xZP = (hoofdx*massaHoofd + rompx*massaRomp + bovenbeenx*massaBovenbeen ...
    + onderbeenx*massOnderbeen + voetx*massaVoet)./(massaHoofd + massaRomp ...
    + massaBovenbeen + massaOnderbeen + massaVoet);

yZP = (hoofdy*massaHoofd + rompy*massaRomp + bovenbeeny*massaBovenbeen ...
    + onderbeeny*massOnderbeen + voety*massaVoet)./(massaHoofd + massaRomp ...
    + massaBovenbeen + massaOnderbeen + massaVoet);



%% Zwaartepunt met for loop
% We scheiden eerst de x- en y-coordinaten
xWaarden = data(:,[1 3 5 7 9]);
yWaarden = data(:,[2 4 6 8 10]);
massas = [massaVoet massaOnderbeen massaBovenbeen massaRomp massaHoofd];
massaTotaal = sum(massas);

% Maak een variabele ZP aan waar we de x- en y-coordinaten van het 
% zwaartepunt in zetten
aantalSamples = size(data,1);
ZP = zeros(aantalSamples,2);
% Loop langs alle waarden en bereken het zwaartepunt
for sample_tel = 1:aantalSamples
    x_zp = sum(massas.*xWaarden(sample_tel,:))/massaTotaal;
    y_zp = sum(massas.*yWaarden(sample_tel,:))/massaTotaal;
    ZP(sample_tel,:) = [x_zp y_zp];
end



%% Zwaartpunt met matrixvermenigvuldiging
% We scheiden eerst de x- en y-coordinaten
xWaarden = data(:,[1 3 5 7 9]);
yWaarden = data(:,[2 4 6 8 10]);
massas = [massaVoet massaOnderbeen massaBovenbeen massaRomp massaHoofd];
massaTotaal = sum(massas);
% We maken een nieuwe variabele met alle massas herhaald
aantalSamples = size(data,1);
massasHerhaald = repmat(massas,aantalSamples,1);
zp_x = sum(massasHerhaald.*xWaarden,2)/massaTotaal;
zp_y = sum(massasHerhaald.*yWaarden,2)/massaTotaal;
ZP = [zp_x zp_y];


%%

fs = 120;
tijd = (0:aantalSamples-1)/fs;
figure
plot(tijd,ZP(:,2));
xlabel('Tijd [s]');
ylabel('Hoogte van het zwaartepunt [m]');
[~,mind] = max(ZP(:,2));
hold on
plot(tijd(mind),ZP(mind,2),'ro');

%%
fs = 120;
dt = 1/fs;
hoogte = ZP(:,2);
v = gradient(hoogte,1/fs);


figure
subplot(2,1,1)
plot(tijd, hoogte);
xlabel('Tijd [s]');
title('Hoogte van het zwaartepunt');
subplot(2,1,2)
plot(tijd, v);
xlabel('Tijd [s]');
ylabel('Hoogte [m]')
title('Verticale snelheid van het zwaartepunt');


hoogteRuis = hoogte + .25*randn(aantalSamples,1);
v2 = gradient(hoogteRuis,1/fs);

figure
subplot(2,1,1)
plot(tijd, hoogteRuis);
xlabel('Tijd [s]');
ylabel('Hoogte [m]')
title('Hoogte van het zwaartepuntmet ruis');
subplot(2,1,2)
plot(tijd, v2);
xlabel('Tijd [s]');
ylabel('Hoogte [m]')
title('Verticale snelheid van het zwaartepunt met ruis');
%% 

