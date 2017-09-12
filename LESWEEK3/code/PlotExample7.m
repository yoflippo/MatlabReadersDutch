n = 10; t = -n:n;
y1 = t.^2; y2 = t.^3;
subplot(2,2,1);
plot(t,y1,'b.'); % blauw met punten geplot
subplot(2,2,2); 
plot(t,y2,'r*'); % rood met astrices geplot
subplot(2,2,3);
plot(t,y1,'b','LineWidth',4); % blauwe dikke lijn
subplot(2,2,4); 
plot(t,y2,'r*','LineWidth',2);% dikke rode astrices
