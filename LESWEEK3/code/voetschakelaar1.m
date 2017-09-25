% Data analyse op basis van voetschakelaardata
clear all; close all; clc;


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
links2 = links;
rechts2 = rechts;
links2(links < 3000)    =  0;
rechts2(rechts < 3000)  =  0;
links2(links >= 3000)   =  1;
rechts2(rechts >= 3000) =  1;

plot(tijdsas,links2);
title('Voetstapdata linkerbeen')
xlabel('Tijd (seconde)');
ylabel('Detectie van een voetstap');
figure; %nieuw figuur aanmaken voor een plot
plot(tijdsas,rechts2,'r');
title('Voetstapdata rechterbeen')
xlabel('Tijd (seconde)');
ylabel('Detectie van een voetstap');
%% Identificeren van stappen
% we bekijken alleen de linkerzijde
%
% Het doel is het maken van het volgende plaatje:

indHS_L = find(diff(links2)==1);
indTO_L = find(diff(links2)==-1);
indHS_R = find(diff(rechts2)==1);
indTO_R = find(diff(rechts2)==-1);
figure; %nieuw figuur aanmaken voor een plot
hold on
plot(tijdsas,links2,'b');
plot(tijdsas(indHS_L),links2(indHS_L),'ro');
plot(tijdsas(indTO_L),links2(indTO_L),'go');
title('Voetstapdata linkerbeen met Toe-off en Heel-strike')
xlabel('Tijd (seconde)');
ylabel('Detectie van een voetstap');
hold off
figure; %nieuw figuur aanmaken voor een plot
hold on
plot(tijdsas,rechts2,'r');
plot(tijdsas(indHS_R),rechts2(indHS_R),'ro');
plot(tijdsas(indTO_R),rechts2(indTO_R),'go');
title('Voetstapdata rechterbeen met Toe-off en Heel-strike')
xlabel('Tijd (seconde)');
ylabel('Detectie van een voetstap');
hold off

%% Verwijderen van de eerste stap zodat we alleen complete stappen hebben
% Bepaal de tijdstip/index van de eerste stap
% Haal het deel van de voetstapdata weg zodat je een geheel aantal


%% Bereken de staptijden