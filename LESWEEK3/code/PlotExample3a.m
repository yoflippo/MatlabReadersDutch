vector = 66:222;
plot(vector,'m') %bij het opgeven een 'm' als tweede
hold on;         %argument geef je de getekende vorm
vectorTwee = 22:333; %een roze kleur
plot(vectorTwee,'b') %bij het opgeven van een 'b'
grid on              %geef je de twee lijn een blauwe
grid minor           %kleur
xlabel('Tijd')
ylabel('Kracht')
legend('Kracht1','Kracht2');
