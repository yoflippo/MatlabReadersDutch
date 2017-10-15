clc; clear all;
%maak een vector aan
vectorA = 0:9;
%vraag de lengte op van vectorA
lengteVectorA = length(vectorA);
%geef het aantal opeenvolgende waardes op die moeten worden opgeteld
aantalWaardes = 2;
%loop de variabele vectorA af en tel alle waardes op
for i = 1:lengteVectorA-(aantalWaardes-1)
    %tel de variabelen bij elkaar op
    resultaatVector(i) =  vectorA(i) + vectorA(i+1);
end
