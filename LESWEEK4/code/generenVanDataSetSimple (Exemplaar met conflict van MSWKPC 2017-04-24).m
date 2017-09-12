t = 0:1/100:10;
x = randn(1,length(t));
save('output.txt','t','x','-ascii');
