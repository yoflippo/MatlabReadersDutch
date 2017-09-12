% Deze matlab file illustreert het gebruik van een for-loop
%
% Achtergrond: ik heb data van 10 proefpersonen opgeslagen in files met de
% namen pp1.mat, pp2.mat, ... pp10.mat.
%
% Ik wil van alle proefpersonen de leeftijden inlezen en opslaan in een
% vector met alle leeftijden. 
%
% De code die ik nodig heb voor bijvoorbeeld proefpersoon 4 is als volgt

fileNaam = 'pp4.mat'; % een filenaam is altijd een string
leeftijd = load(fileNaam,'leeftijd'); % Matlab geeft de opgeslagen leeftijd 
                                      % terug en die slaan we op in de 
                                      % variabele leeftijd
leefTijden(4) = leeftijd;

% Nu is het erg omslachtig om die 10 keer te copy-pasten.
% Het enige wat verandert is het nummer van de proefpersoon.
%
% We kunnen dit in een for-loop zetten met de volgende stappen:
%      - Kies een teller (pp_tel) die loopt van 1 tot 10
%      - Maak voor elke stap de filenaam die bij deze persoon hoort
%      - Haal de data op voor deze proefpersoon op uit de bijbehorende file
%      - Sla deze op de juiste plek op in de vector leeftijden
%
leeftijden = [];

for pp_tel = 1:10
    fileNaam = ['pp' num2str(pp_tel) '.mat']; % creeer de filenaam
    data = load(fileNaam,'leeftijd'); % haal alleen de leeftijd op
    leeftijden(pp_tel) = data.leeftijd; % voeg hem toe aan alle leeftijden
end

% Print het resultaat
leeftijden