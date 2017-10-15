function [ gemKniehoek, mediaanKniehoek, maxKniehoek, minKniehoek, maxKniehoekSnelheid ] = KniehoekUitkomsten( kniehoek, kniehoekSnelheid )




% Met deze functie krijg je snel de statistische waarde van de kniehoek
% Inputs: Kniehoek    -- een vector met getallen
% Outputs: Het gemiddelde, Mediaan, Maximale Kniehoek en Minimale Kniehoek



gemKniehoek=mean(kniehoek);
mediaanKniehoek=median(kniehoek);
[maxKniehoek, index]=max(kniehoek);
minKniehoek=min(kniehoek);


 maxKniehoekSnelheid=max(kniehoekSnelheid);

 maxkniehoekSnelheidHoek=kniehoekSnelheid(index)

end

%gemKniehoekSnelheid, mediaanKniehoekSnelheid, maxKniehoekSnelheid, minKniehoekSnelheid
%kniehoekSnelheid