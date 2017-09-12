n = 10;
t = -n:0.1:n;
y1 = t.^2;
y2 = t.^3;
subplot(2,2,1); %definieer eerst een subplot
plot(t,y1);     %teken daarna een normale plot
grid on         %voeg ook labels e.d. toe
grid minor
subplot(2,2,2); %dit is de tweede subplot
plot(t,y2,'r'); %subplot krijgt drie argumenten:
grid on         %1: aantal plots per rij (r)
grid minor      %2: aantal plots per kolom (k)
subplot(2,2,3); %3: het nummer van de subplot 
plot(t,y1,'r'); %   dat nummer zit tussen 1 en (r*k) 
subplot(2,2,4);
plot(t,y2);
