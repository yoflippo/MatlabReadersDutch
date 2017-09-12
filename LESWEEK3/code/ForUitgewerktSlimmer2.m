%maak Command Window leeg
clc;
%haal alle variabelen uit de Workspace
clear all; %dit commando mag je niet te pas en te onpas gebruiken
%maak een vector aan
vectorA = 0:9;
%loop de variabele vectorA af en tel alle waardes op
for i = 1:length(vectorA)-1
    %tel de variabelen bij elkaar op
    resultaatVector(i) =  vectorA(i) + vectorA(i+1);
end
