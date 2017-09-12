% Deze matlab file illustreert het gebruik van een for-loop
%
% We willen de getallen 1 t/m 10 op het scherm tonen. 
% We laten bijvoorbeeld het getal 10 zien met het commando disp(10)
%
% For een for-loop hebben we een variabele nodig die vna 1 tot 10 telt. We
% noemen deze 'teller'

for teller = 1:10 % de variabele teller loopt nu van 1 tot 10
    disp(teller); % laat het getal in teller zien
end

%%
% Stel nu dat we een stukje tekst willen laten zien met het getal erin
% We kunnen de tekst "dit is getal 2" als volgt samenstellen"
getal = 2;
str = ['dit is getal ' num2str(getal)];
disp(str);

% om een op deze manier een string te maken moeten alle onderdelen ook een
% string zijn. het deel 'dit is geta ' is per definitie een string, maar
% 'getal' niet. Hier maken we een string van met het commando num2str.


%%
for teller = 1:10 % de variabele teller loopt nu van 1 tot 10
    disp(['dit is getal ' num2str(teller)]); % laat het getal in teller zien
end


%%
% Als we bijvoorbeeld de filenamen pp1.mat t/m pp10.mat willen maken dan
% kan dat op een vergelijkbare manier
for teller = 1:10 % de variabele teller loopt nu van 1 tot 10
    fileNaam = ['pp' num2str(teller) 'mat'];
    disp(fileNaam);
end


%%
% Stel nu dat we een aantal coordinaten hebben opgeslagen in een matrix. De
% De coordinaten val elk punt vormen een rij in de matrix. De eerste kolom
% is de x-coordinaat, de tweede is de y-coordinaat.
Punten = [1 1;2 1.5; 2 2; 1.5 3];
aantalPunten = 4;
% We willen nu op al deze punten een ellips tekenen met het welbekende
% 'rectangle' commando. We gebruken hier ook de for-loop
for puntenTeller=1:aantalPunten
    % bepaal de positie
    rectPos = [Punten(puntenTeller,1)-0.01 Punten(puntenTeller,2)-0.01 0.02 0.02];
    % teken de ellips
    rectangle('Position',rectPos,'Curvature',[1 1],'eraseMode','none');
end


