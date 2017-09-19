% Data analyse op basis van voetschakelaardata



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

%% Identificeren van stappen
% we bekijken alleen de linkerzijde
%
% Het doel is het maken van het volgende plaatje:

indHS = find(diff(links2)==1);
indTO = find(diff(links2)==-1);
figure
hold on
plot(tijdsas,links2,'b');
plot(tijdsas(indHS),links2(indHS),'ro');
plot(tijdsas(indTO),links2(indTO),'go');
hold off

%% Verwijderen van de eerste stap zodat we alleen complete stappen hebben
% Bepaal de tijdstip/index van de eerste stap
% Haal het deel van de voetstapdata weg zodat je een geheel aantal


%% Bereken de staptijden