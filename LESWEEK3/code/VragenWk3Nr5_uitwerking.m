% Het is vaak handig om het aantal elementen in een variabele n te stoppen.
n = 100;
% Maak een vector aan met de getallen 1 tot en met 100
vectorA = 1:n;
% Maak een resultaat variabele aan voordat deze gebruikt wordt in een
% for-loop.
resultaat = 0;
for i = 1:n
    % Tel alleen de even indices bij elkaar op 
    if ~mod(i,2)
        resultaat = resultaat + vectorA(i);
    end
end
