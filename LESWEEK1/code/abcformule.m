function nulpunten = abcformule(a,b,c)
%abcformule De abc formule voor de nulpunten van een 2e graads vergelijkingen
%   We berekenen de numlpunten van een 2e graads vergelijking gegeven door
%   y(x) = a*x^2 + b*x + c
%
% De nulpunten worden berekend m.b.v. de abc-formule, waarvoor geldt dat
%
% x1 = (-b + sqrt(D) )/(2*a) en x2 = (-b + sqrt(D) )/(2*a)
% 
% met D = b^2-4*a*c
%
% Als D < 0 dan zijn er geen nulpunten en wordt een lege vector geretourneerd
% Als D = 0 dan is er slechts 1 oplossing en wordt een vector
% geretourneerd met twee keer dezelfde oplossing
% Als D > 0 dan zijn er twee verschillende oplossingen en worden deze in
% een vector geretourneerd
%
% Inputs, a,b,c, de coefficienten van de 2e graads vergelijking
% Outputs, een kolomvector met de oplossingen x1 en x2

D = b^2-4*a*c;
if D < 0
    nulpunten = [];
else
    nulpunten = [(-b + sqrt(D) )/(2*a) ; (-b + sqrt(D) )/(2*a)];
end

