% lees een bestand in m.b.v. uigetfile()
% geef als filter: .'csv' zodat op .csv bestanden wordt 
% gefilterd.
[FileName,PathName] = uigetfile('.csv');
% gebruik dlmread() om het gevonden CSV-bestand in te lezen
data = dlmread([PathName FileName]);
