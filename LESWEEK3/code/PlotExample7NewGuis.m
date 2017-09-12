n = 10;
t = -n:0.1:n;
y1 = t.^2;
y2 = t.^3;
h1=figure(1)       %maak een nieuw figuur aan (Figure 1)
plot(t,y1,'b'); %teken in dit Figure
figure(2)       %maak een tweede figuur aan (Figure 2)
h2=plot(t,y2,'r'); %teken iets in dit figuur
plot(h1,t,y2,'m')
