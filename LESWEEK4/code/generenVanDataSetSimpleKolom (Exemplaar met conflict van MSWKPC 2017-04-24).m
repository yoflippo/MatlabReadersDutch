% Maak een tijd vector aan
t = (0:1/100:10)';           
% Genereer op basis van de tijdvector random data
x = randn(1,length(t));
% Schrijf de data weg naar een bestand genaamd
% 'output.txt'
save('outputkolom.txt','t','x','-ascii');
