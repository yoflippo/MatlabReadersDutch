% Dit script berekent de kniehoek van een aantal proefpersonen.
% Elke proefpersoon heeft een aparte file die proefpersoon1.mat, 
% proefpersoon2.mat,etc genoemd is. Er zijn in totaat 8 proefpersonen.
%
% De file bevat een variabele coordinaten, een 3x2 matrix met als eerste
% kolom de x-coordinaat en als tweede kolom de y-coordinaat van de markers
% van de heup (rij 1), knie (rij 2) en enkel (rij 3).
%
% De kniehoek berekenen we met cosinusregel waarbij we eerst de volgende 
% afstanden berekenen:
%   bovenBeenlengte (bbl): afstand tussen heup en knie
%   onderBeenlengte (obl): afstand tussen knie en enkel
%   heupEnkellengte (hel): afstand tussen heup en enkel
%
% De kniehoek wordt dan gegeven door
%   kniehoek = acos( (bbl^2 + obl^2 - hel^2)/(2*bbl*obl) )

% Constanten
AANTAL_PROEFPERSONEN = 8;

% Initieren van variabelen
kniehoeken = zeros(1,AANTAL_PROEFPERSONEN);

% Bepaal voor elke proefpersoon de kniehoek
for pp_teller = 1:AANTAL_PROEFPERSONEN
    % Bepaal de filenaam
    filenaam = ['proefpersoon' num2str(pp_teller) '.mat'];
    % Laad de gegevens in
    data = load(filenaam);
    % Bepaal de coordinaten van de heup, knie en enkel
    heup  = data.coordinaten(1,:);
    knie  = data.coordinaten(2,:);
    enkel = data.coordinaten(3,:);
    % Bepaal de afstanden, hier gebruiken we de norm van een vector
    bovenBeenlengte = norm(heup-knie);
    onderBeenlengte = norm(knie-enkel);
    heupEnkellengte = norm(heup-enkel);
    % Bepaal de kniehoek m.b.v. de cosinusregel
    kniehoek = acos( (bovenBeenlengte^2 + onderBeenlengte^2 - heupEnkellengte^2)/...
            (2*bovenBeenlengte*onderBeenlengte) );
    % Sla het resultaat op in de variabele kniehoeken
    kniehoeken(pp_teller) = kniehoek;
end
