%% Opdracht 1
% Maak een functie aan met de functienaam meanMedian waarbij je het 
% gemiddelde en mediaan krijgt als output. De input is en
% vector genaamd balsnelheid.
% balSnelheid=[78 78 98 68 48 98 78 64 72 46]


function [gemiddelde, mediaan]= meanMedian(balSnelheid)

gemiddelde=mean(balSnelheid)
mediaan=median(balSnelheid)
end
