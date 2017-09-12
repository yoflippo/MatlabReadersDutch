vectorA = 0:9;
aantalWaardes = 2;
resultaatVector = zeros(1,length(vectorA));
for i = 1:length(vectorA)-(aantalWaardes-1)
    resultaatVector(i) =  vectorA(i) + vectorA(i+1);
end
