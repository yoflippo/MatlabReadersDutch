% het is handig om het aantal elementen in een variabele n te stoppen.
n = 100; 
vectorA = 1:100;
resultaat = 0;
for i = 1:length(vectorA)
   if ~mod(i,2)
       resultaat = resultaat + vectorA(i);
   end
end
