clear variables %Maak workspace leeg
close all %Sluit eventueel open figures
clc %Maak het Command Window leeg
vectorA = 10:20 %Maak een vectorA aan en initialiseer hem
for i = 1:length(vectorA)-1
    resultaatVector(i) = vectorA(i) * vectorA(i+1);
end
