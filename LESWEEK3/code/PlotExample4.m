n = 10;
t = -n:0.1:n;
hold on;
for i = 1:10
    functie = t.^2+i*t-10+2;
    plot(t,functie)
end
grid on
grid minor
xlabel('Tijd')
ylabel('functie')

