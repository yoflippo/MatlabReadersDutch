%% Biostatica, Matlab instructie script 3 lesweek 1.1
% Door Mark Schrauwen 05-07-2017

clc; clear all; close all;





% Druk op CTR+SHIFT+ENTER om deze volgende code secties uit te voeren 
%%~








%% We gaan in de komende instructie zien wat VARIABELEN zijn.

% Een variabele is een manier om in een script/functie een waarde op te
% slaan. Deze waarde kan later weer worden gebruikt

% Voorheen hebben we laten zien hoe je een optelsom op deze manier bereken
4 + 5 

% Maar als we het resultaat van deze berekening nodig hebben kunnen we
% die niet gebruiken...

% Maar...... 
% Matlab zet stiekem het resultaat (9) in de DEFAULT variabele 'ans'


%%~















%% Als we direct na de vorige berekening een nieuwe berekening uitvoeren dan 
% verdwijnt het oude resultaat:
clc
60 + 40  

% Het resultaat van deze operatie staat in het Command Window

% Het oude resultaat, de waarde 9, is verdwenen uit de ans variabele

% Waar slaat de naam 'ans' op?


%%~







%% Het resultaat van de vorige operatie (4 + 5) is nu verdwenen


%%~














%% Hoe lossen we dit probleem op?
clc

% We slaan het resultaat van een bewerking op in een variabele:

som = 4 + 5 


% Hier is het woord "som" de naam van de variabele.

% Het resultaat van de bewerking/operatie 4 + 5 wordt dan opgeslagen op een
% geheugenplek met de naam 'som'

%%~










%% Nu staat het resultaat in de VARIABELE met de naam: "som"
clc
% Deze variabele staat nu ook in de Workspace

% Het handige hier aan is dat je het resultaat van deze bewerking nu tot je
% beschikking is:

tweekeersom = som * 2


%%~












%% In de regel: "tweekeersom = som * 2"
% staat het volgende:

% Pak de waarde in de variabele 'som' en vermenigvuldig die met 2

% Ken het resultaat van die operatie (18) toe aan een nieuwe variabele met
% de naam 'tweekeersom'


%%~













%% Je kunt variabelen dus hergebruiken voor later en dat is heel erg handig!
clc
% In Matlab kunnen we ook stukken tekst op slaan in een variabele,
% bijvoorbeeld:

varEenStukTekst = 'MatlabIsLeuk'


% LET OP! Matlab maakt onderscheid tussen 'tekst' en "tekst". In dit geval
% werken we met enkele quotes.

%%~















%% Het opslaan van een tekst wordt een 'string' genoemd.
clc
% Die naam komt van het Engelse woord 'stringing' wat naar het Nederlands
% vertaald kan worden als 'aan elkaar reigen'.

% Maar wat wordt er aan elkaar gereigd?

% Antwoord: de losse karakters van een stuk tekst.

% Wat is de tweede letter van de tekst opgeslagen in de variabele
% 'varEenStukTekst'?
% ANTWOORD: de letter 'a'

% Kijk maar:
varEenStukTekst(2)

%%~







%% Een string (tekst) is dus een aan elkaar gekoppelde set van karakters
clc
% Zo geeft onderstaande regel de letter 'b'
varEenStukTekst(6) 

%%~








%% Een string is eigenlijk een vector.
clc
% Wat is een vector?

% Een vector is een RIJ of KOLOM van waardes (numeriek of alfanumeriek).

% In Matlab gebruiken we vaak numerieke vectors

% Zo'n vector maak je op de volgende manier:

vectorGetallen = [1 2 3 4 5 6 7 8 9 0]

%%~









%% Je geeft met blokhaken [ ] aan dat alles tussen de blokhaken behoort
% tot één vector


% Elk plekje van een vector noemen we: EEN ELEMENT
% Bijvoorbeeld de waarde van plek of element twee opvragen doe je met:

vectorGetallen(2)


%%~








%% Een vector kunnen we dus ook opslaan in een variabele
clc

% Hoe pakken we het vierde getal van de vector variabele: 'vectorGetallen'?

% Op dezelfde manier als in de string en het voorbeeld hiervoor:

vectorGetallen(4)


%%~









%% Vectoren kunnen in variabelen worden opgeslagen.
clc
% We kunnen ook bewerkingen uitvoeren op die vectoren

% Wat komt er uit de volgende operatie:
vectorGetallen + 2


%%~








%% Wat komt er uit deze operatie:
clc

vectorGetallen * 2


%%~








%% Elk getal in de vector 'vectorGetallen' wordt dus vermenigvuldigt met 2



%%~











%% je kunt ook vectoren vermenigvuldigen met andere vectoren:
clc

% Stap 1 - maak een vector aan op basis van de eerste vector
vectorTwee = vectorGetallen

% Stap 2 - vermenigvuldig nu de vectoren met elkaar, maar let op de FOUTMELDING
vectorTwee * vectorGetallen

%%~







%% Dit gaat fout, maar waarom?
clc

% variabeleA * 2 is gemakkelijk

% maar vectorA * vectorB niet. Want welk element van vectorB moet worden
% gebruikt voor vermenigvuldig?

% Oplossing:
vectorTwee .* vectorGetallen


% Met de punt (.) geef je aan dat elk N'de element van 'vectorTwee' met 
% elke N'de element 'vectorGetallen' moet worden vermenigvuldigd.

%%~









%% GA NU WEER ZELF AAN DE SLAG

% ========================= EINDE =========================




%% Biostatica, Matlab instructie script 3 lesweek 1.1
% Door Mark Schrauwen 05-07-2017

