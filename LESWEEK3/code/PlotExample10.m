n = 10;
t = -n:0.1:n;
y1 = t.^2;
subplot(2,1,1); %definieer eerst een subplot
plot(t,y1);     %teken daarna een normale plot
subplot(2,1,2); %dit is de tweede subplot
plot(t,y1);     %exact dezelfde plot
xlim([-5 5])    %opgegeven x-bereik van de laatste plot
ylim([-5 5])    %opgegeven y-bereik van de laatste plot
