%% Biostatica, Matlab instructie script lesweek 2.2
% Door Mark Schrauwen 23-07-2017
% GEBRUIK: Ga naar een code sectie en druk op CTR+ENTER om de code van die
% sectie uit te voeren.
clc; clear all; close all;

%% Logische operatoren
clc
% welke waarde heeft de toestand 'true'?
true














%% Logische operatoren
clc
% welke waarde heeft de toestand 'false'?
false














%% DE AND-operator
% Aad en Joris zijn uitgenodigd voor een feest. 
% Gaan Aad en Joris allebei naar het feest?
% Als Aad/Joris naar het feest gaan dan is dat 'true'
Aad = true;
Joris = true;

% Onderstaande code geeft antwoord op de vraag of Aad EN Joris naar het
% feest gaan
Aad & Joris









%% DE AND-operator
% Aad en Joris zijn uitgenodigd voor een feest. 
% Gaan Aad en Joris allebei naar het feest?
% Als Aad/Joris naar het feest gaan dan is dat 'true'
Aad = true;
Joris = false;

% Onderstaande code geeft antwoord op de vraag of Aad EN Joris naar het
% feest gaan
Aad & Joris


%% DE AND-operator
% Aad en Joris zijn uitgenodigd voor een feest. 
% Gaan Aad en Joris allebei naar het feest?
% Als Aad/Joris naar het feest gaan dan is dat 'true'
Aad = true;
Joris = false;

% De AND-operator: &  heeft ook een andere vorm
and(Aad,Joris)

% Je mag de twee vormen & en and(,) door elkaar gebruiken




%% DE OR-operator
% Aad en Joris zijn uitgenodigd voor een feest. 
% Gaat Aad OF Joris naar het feest?
Aad = true;
Joris = true;

% Onderstaande code geeft antwoord op de vraag of één van beide personen
% naar het feest gaan
Aad | Joris










%% DE OR-operator
% Aad en Joris zijn uitgenodigd voor een feest. 
% Gaat Aad OF Joris naar het feest?
Aad = true;
Joris = true;

% Onderstaande code geeft antwoord op de vraag of één van beide personen
% naar het feest gaan
% Dat kan ook als volgt worden getypt
or(Aad,Joris)













%% DE NOT-operator
Aad = true;
Joris = true;

% Als Aad besluit toch niet naar het feest te gaan dan kan dat worden
% beschreven met de NOT-operator
[Aad ~Aad]  %We schrijven dit voor nu in vector vorm (zie de rechte haken)














%% DE NOT-operator
Aad = true;
Joris = true;

% Als Aad besluit toch niet naar het feest te gaan dan kan dat worden
% beschreven met de NOT-operator
% Dit kan ook als volgt worden beschreven
[Aad not(Aad)]













%% Combineren van logische operatoren
Herre = false;
Aad = true;
Joris = true;

% Gaan Herre EN Aad EN Joris naar het feest?
Herre & Aad & Joris















%% Combineren van logische operatoren
Herre = false;
Aad = true;
Joris = true;

% Gaat Herre NIET naar het feest EN Aad EN Joris wel?
not(Herre) & Aad & Joris









