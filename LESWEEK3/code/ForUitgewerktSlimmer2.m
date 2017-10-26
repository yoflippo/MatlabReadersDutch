clc;
clear variables
vectorA = 0:9;
%loop de variabele vectorA af en tel alle waardes op
for i = 1:length(vectorA)-1
    %tel de variabelen bij elkaar op
    resultaatVector(i) =  vectorA(i) + vectorA(i+1);
end

