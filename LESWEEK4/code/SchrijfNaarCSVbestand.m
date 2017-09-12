% Maak een tijd vector aan
t = (0:1/100:10)';           
% Genereer op basis van de tijdvector random data
x = randn(length(t),1)+sin(t);
% Schrijf de data weg naar een bestand genaamd
% 'output.txt'
data = [t x];
dlmwrite('CSV.csv',data);
