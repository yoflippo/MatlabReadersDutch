%% Biostatica, Matlab instructie script 3 lesweek 1.1
% Door Mark Schrauwen 05-07-2017

clc; clear all; close all;



% Druk op CTR+SHIFT+ENTER om deze volgende code secties uit te voeren 
%%~










%% We gaan in dit instructie moment zien wat we nog meer kunnen doen met 
% vectoren.


% We zien bijvoorbeeld:
% - hoe we vectoren van vectoren kunnen maken
% - hoe we de lengte van vectoren kunnen opvragen
% - hoe we vectoren snel kunnen aanmaken


%%~









%% Een vector bestaat, zoals we eerder hebben gezien, uit verschillende waardes

vector = [2 3 4]


%%~










%% We kunnen een vector ook opbouwen uit niet-vector variabelen

% We maken eerst drie verschillende variabelen aan:
varEen = 1
varTwee = 2
varDrie = 3

%%~










%% We kunnen een vector ook opbouwen uit niet-vector variabelen

% vervolgens maken we de vector aan:

vector = [varEen varTwee varDrie]











%% Merk op dat de variabele 'vector' telkens wordt overschreven

%%~












%% Bijvoorbeeld:

vector = 666;

%%~













%% Nu bestaat de variabele 'vector' nog maar uit één getal

% En nu weer uit drie getallen:

vector = [varEen varTwee varDrie]


%%~












%% Vectoren gaan we bij Bewegingstechnologie heel vaak gebruiken.

% Bijvoorbeeld om een sinus af te beelden.

% LET OP! Veel van deze code zul je nu nog niet begrijpen en dat hoeft ook
% niet. Dit is slechts een voorbeeld om aan te tonen dat we vectoren in
% Matlab heel vaak nodig zullen hebben.

tijdvector = 0:0.01:20;
sinus = sin(tijdvector); %sinus is ook een vector
plot(tijdvector,sinus)

% Elke de sinus is opgebouwd uit meerdere waardes
%%~







%% Uiteindelijk gaan we bij Bewegingstechnologie Matlab gebruiken om 
% Bewegingsproblemen te modelleren. 


%%~











%% Terug naar het snel aanmaken van vectoren
clc; close all;


% Je kunt in Matlab snel vectoren aanmaken (en vullen met waardes)

% Dat doe je met de volgende code:

vector = 0:10

%%~







%% Je kunt deze vector ook opvullen met kleinere getallen
clc
vector = 0:0.5:10

%%~









%% Je kunt ook een vector laten aanmaken met willekeurige getallen
clc
vectorWillekeurig = randn(1,10)

%%~











%% Je kunt ook een vector laten aanmaken met willekeurige getallen
clc
% Tweede keer
vectorWillekeurig = randn(1,10)

%%~














%% Je kunt ook een vector laten aanmaken met willekeurige getallen
clc
% Derde keer
vectorWillekeurig = randn(1,10)

%%~











%% Je kunt ook een vector laten aanmaken met willekeurige getallen
clc
% Vierde keer
vectorWillekeurig = randn(1,10)

%%~










%% Het genereren van willekeurige getallen kan later van pas komen als je 
% signalen wilt genereren waar ruis of storing in zit.


%%~














%% We kunnen ook vectoren van vectoren aanmaken
clc
% Dat noemen we een matrix.

% Eerst maken we drie rij-vectoren aan:

vector1 = 1:3
vector2 = 2:4
vector3 = 3:5

%%~






%% Als je van een rij-vector een kolom-vector wil maken doe je dat zo:
clc

vector1 = (1:3)'
vector2 = (2:4)'
vector3 = (3:5)'

%%~









%% We kunnen ook vectoren van vectoren aanmaken
clc
% Dat noemen we een matrix.

% Daarna stoppen we de rij-vectoren in een andere vector:

matrix = [vector1 vector2 vector3]

%%~










%% Dit is de eerste matrix die we hebben gemaakt.

% Matlab staat voor: Matrix Laboratory

%%~











%% Hoe kunnen we zien welke variabele in het geheugen staan?
clc
% 1- Kijk in de Workspace
% 2- Typ 'whos' in het Command Window

whos


%%~








%% Hoe kunnen we de lengte van een vector opvragen?
clc

vector1
lengte = length(vector1)












%% de vorige code 'lengte = length(vector1)' is als volgt opgebouwd:

% length() is een Matlab functie, later leer je daar nog veel meer over

% vector1 is een variabele van het type vector en bestaat uit de getallen 1
% 2 en 3

% als je tussen de haakjes van length( ) een vector plaats geeft Matlab je
% de lengte van de vector.

% In dit geval (vector1) zitten er 3 getallen in de variabele en geeft
% length(vector1) dus het getal 3 terug

% Dit getal wordt opgeslagen in de variabele 'lengte'

%%~



%% Herinner je de matrix nog?

matrix

%%~












%% Hoe kunnen we de afmetingen van een matrix opvragen?

size(matrix)


%%~










%% Het eerste getal (3) geeft het aantal rijen aan.
% Het tweede getal het aantal kolommen

% Even controleren of dit klopt:

matrix2 = [ 1 2 3
            2 3 4
            3 4 5
            4 5 6 ]
% matrix2 bestaat uit 4 rijen en 3 kolomen

% Merk op dat dit een andere manier is om een matrix aan te maken.

%%~









%% Checken of dit klopt

size(matrix2)


%%~















%% Inderdaad 4 rijen en 3 kolommen

%%~



























%% GA NU WEER ZELF AAN DE SLAG

% ========================= EINDE =========================




%% Biostatica, Matlab instructie script 4 lesweek 1.1
% Door Mark Schrauwen 05-07-2017