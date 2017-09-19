function [ GemKniehoek, MediaanKniehoek, MaxKniehoek, MinKniehoek, GemKniehoeksnelheid, MediaanKniehoekSnelheid, MaxKniehoeksnelheid, MinKniehoeksnelheid ] = KniehoekUitkomsten( Kniehoek, KniehoekSnelheid )
%Met deze functie krijg je snel de statistische waarde van de kniehoek
% Inputs: Kniehoek    -- een vector met getallen
% Outputs: Het gemiddelde, Mediaan, Maximale Kniehoek en Minimale Kniehoek



GemKniehoek=mean(Kniehoek);
MediaanKniehoek=median(Kniehoek);
MaxKniehoek=max(Kniehoek);
MinKniehoek=min(Kniehoek);

GemKniehoekSnelheid=mean(KniehoekSnelheid);
MediaanKniehoekSnelheid=median(KniehoekSnelheid);
MaxKniehoekSnelheid=max(KniehoekSnelheid);
MinKniehoekSnelheid=min(KniehoekSnelheid);

end

