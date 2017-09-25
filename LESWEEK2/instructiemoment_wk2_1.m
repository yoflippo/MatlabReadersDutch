%% Biostatica, Matlab instructie script lesweek 2.1
% Door 25-09-2017Bart van Trigt 
% GEBRUIK: Ga naar een code sectie en druk op CTR+SHIFT+ENTER om de code van die
% sectie uit te voeren.

clc; clear all; close all;



% Druk op CTR+SHIFT+ENTER om deze code sectie uit te voeren en
% naar de volgende code sectie te gaan

%%~

%-----------------------------------------------
%% Instructie moment 1 

% we gebruiken de max functie om uit te leggen dat je meerder outputs kan
% hebben laat 'Usain_Bolt.mat' in

max(Snelheid)

maximaleSnelheid=max(Snelheid)

[maximaleSnelheid, index]=max(Snelheid)




%-------------------------------------------------
%% Instructie moment 2

A=[ 1 2 3; 4 5 6; 7 8 9]

eersteRij=A(1,:)
eersteKolom=A(:,1)

% deel 2
A= [ 140 139 138 128; 110 111 130 123; 120 132 122 132]

gemiddelde_perpersoon=mean(A,2)

mean(A,1)

%---------------------------------------------------
%% Instructie moment 3
%Hieronder staan een paar functies die je kan laten runnen over een Matrix
%A

A=[ 1 2 3; 4 5 6; 7 8 9; 10 11 12]


size(A) %berekende het aantal rijen en kolommen
A(end)
numel(A) %totaal aantal elementen
A(:,1)
A(1,:)
A(1:2,3) %pakt de eerste twee rijen van de derde kolom

v=[ 7  9 1 12]

v'  %transponeren






