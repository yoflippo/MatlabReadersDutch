%% Biostatica, Matlab instructie script lesweek 2.2
% Door Mark Schrauwen 23-07-2017
% GEBRUIK: Ga naar een code sectie en druk op CTR+ENTER om de code van die
% sectie uit te voeren.
clc; clear all; close all;

%% De eerste kennismaking met het if-statement (CTRL+ENTER)
Herre = 10;
Mark = 5;

% een if-statement wordt uitgevoerd als de test-situatie true is

if Herre > Mark %test situatie, waaruit een beslissing volgt
    disp("Deze code wordt uitgevoerd als")
    disp("Herre is groter dan Mark")   
end








%% Wat gebeurt er nu?
clc
if Herre < Mark %test situatie, waaruit een beslissing volgt
    disp("Herre is kleiner dan Mark")
end 

% Waarom gebeurt er niets?











%% Een andere vorm
clc
if Herre == Mark
    disp("Herre is gelijk aan Mark")
end













%% Wat als we een beslissingen moeten maken als het niet true is?
clc
if Herre ~= Mark
    disp("Herre is ongelijk aan Mark")
end













%% Maar er is ook een andere variant
clc
if Herre == Mark        %sitatie als de statement true is
    disp("Herre is gelijk aan Mark")
else                    %sitatie als de statement false is
    disp("Herre is ongelijk aan Mark")
end

% het else statement wordt uitgevoerd als de test false is.









%% Soms moet je meer dan 2 beslissingen maken dan gebruik je een switch-case
clc
Herre = 5;
Mark = 10;

switch Herre+Mark
    case 5
        disp("De waarde is 5");
    case 10
        disp("De waarde is 10");
    case 15
        disp("De waarde is 15");
    otherwise
        disp("Er is geen overeenkomstige waarde")
end




%% Wat als er geen overeenkomstige waarde is
clc
Herre = 6;

switch Herre+Mark
    case 5
        disp("De waarde is 5");
    case 10
        disp("De waarde is 10");
    case 15
        disp("De waarde is 15");
    otherwise
        disp("Er is geen overeenkomstige waarde")
end

% Wat moeten we doen om toch een waarde te laten afdrukken in het Command
% Window?





pause(5)
disp("Ga nu zelf weer aan de slag")