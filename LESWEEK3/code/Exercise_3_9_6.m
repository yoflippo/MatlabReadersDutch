clear variables
close all
tijd = 0:0.1:10;
sig1 = sin(tijd);
sig2 = randn(1,length(tijd));
sig3 = cos(tijd);
sig4 = randn(1,length(tijd));

figure
plot(tijd,sig1)
hold on
plot(tijd,sig2)
figure
plot(tijd,sig3)
hold on
plot(tijd,sig4)