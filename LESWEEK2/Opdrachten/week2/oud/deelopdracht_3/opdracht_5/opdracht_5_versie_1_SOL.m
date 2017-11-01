%% Opdracht 5
% Maak een functie aan met de naam matrixNaarVector. 
% Deze functie heeft 1 input en dat is een 3x3 matrix.
% Deze functie heeft drie outputs namelijk de 
% eerste rijvector van de matrix, de tweede en de derde.  
% Maak deze functie aan.

function [eersteRijvector,tweedeRijvector,derdeRijvector]=matrixNaarVector(Matrix);


eersteRijvector=Matrix(1,:);
tweedeRijvector=Matrix(2,:);
derdeRijvector= Matrix(3,:);
end