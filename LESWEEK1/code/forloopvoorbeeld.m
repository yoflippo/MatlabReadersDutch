% We genereren een dataset
data = [
    0.5377   -1.3499    0.6715    0.8884   -0.1022;
    1.8339    3.0349   -1.2075   -1.1471   -0.2414;
   -2.2588    0.7254    0.7172   -1.0689    0.3192;
    0.8622   -0.0631    1.6302   -0.8095    0.3129;
    0.3188    0.7147    0.4889   -2.9443   -0.8649;
   -1.3077   -0.2050    1.0347    1.4384   -0.0301;
   -0.4336   -0.1241    0.7269    0.3252   -0.1649;
    0.3426    1.4897   -0.3034   -0.7549    0.6277;
    3.5784    1.4090    0.2939    1.3703    1.0933;
    2.7694    1.4172   -0.7873   -1.7115    1.1093];

% We bepalen het aantal kolommen. Dit doen we met het commando "size"
aantalKolommen = size(data,2);

% We maken alvast een variabele aan waar we de kolomgemiddelden later inzetten
kolomGemiddelden = zeros(1,aantalKolommen);

% Met behulp van een for-loop lopen we alle kolommen langs en nemen we het
% gemiddelde van de desbetreffende kolom. De desbetreffende kolom
% selecteren we uit de dataset; we kunnen bijvoorbeeld de 2e kolom uit de
% dataset selecteren met het commando "data(:,2)".
%
% We hebben een teller aangemaakt (kolom_tel) die het kolomnummer aanduidt
for kolom_tel = 1:aantalKolommen
    kolomGemiddelden(kolom_tel) = mean(data(:,kolom_tel));
end

