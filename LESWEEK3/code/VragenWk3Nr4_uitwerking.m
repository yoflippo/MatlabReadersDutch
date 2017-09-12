x = 0:100;
a = 2;
b = 4;
c = 5;
for i = 1:length(x)
    y(i)=a*x(i)^2+b*x(i)+c; 
end
%Zoals je wellicht al door had kun je dit nog veel korter noteren door
%regels 5-7 te vervangen door:
% y = a.*(x.^2)+b.*x+c
