clear variables
close all
signaal1 = randn(1,100);
signaal2 = randn(1,100);
signaal3 = randn(1,100);
signaal4 = randn(1,100);

subplot(2,2,1)
plot(signaal1)
title('signaal1')
subplot(2,2,2)
plot(signaal2)
title('signaal2')
subplot(2,2,3)
plot(signaal3)
title('signaal3')
subplot(2,2,4)
plot(signaal4)
title('signaal4')
