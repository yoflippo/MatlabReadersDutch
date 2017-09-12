% Maak een tijd vector aan
t = (0:1/100:10)';           
% Genereer op basis van de tijdvector random data
aantal_kolommen = 10;
x = randn(length(t),aantal_kolommen);
% Schrijf de data weg naar een bestand genaamd
% 'output.txt'
data = [t x];
save('outputMultipleColumns.txt','data','-ascii');
