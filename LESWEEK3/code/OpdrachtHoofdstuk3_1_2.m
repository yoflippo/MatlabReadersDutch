n = 10; x = -n:n;
y = x.^3+x.^2+4*x;
plot(x,y,'m','Linewidth',2);
grid minor
legend('voorbeeld');
xlabel('x-as')
ylabel('y-as')
title('dit is een titel')
xlim([-3 3]); 
ylim([-100 100];
