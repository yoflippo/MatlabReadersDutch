% lees een bestand in m.b.v. uigetfile()
% filter '*' betekent dat elk bestand wordt getoond (dit symbool wordt ook
% wel de 'wildcard' genoemd).
[FileName,PathName,FilterIndex] = uigetfile('*');
%% controleer of een tekst-bestand is gepakt door de extensie 
% te controleren
% Hak de FileName op in kleinere onderdelen
[pathstr,name,ext] = fileparts(FileName);
% Gebruik strfind() om te controleren of '.txt' in de Filename bestand. Als
% dat zo is, dan hebben we een tekstbestand ingeladen.
if ~isempty(strfind(FileName,'.txt')) || ~isempty(strfind(FileName,'.asc'))
    % gebruik load() om het gevonden txt-bestand in te lezen
    data = load([PathName FileName]);
end
