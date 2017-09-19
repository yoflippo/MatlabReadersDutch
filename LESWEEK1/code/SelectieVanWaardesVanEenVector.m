clear all; close all; clc;

%% een vector genaam 'signal'
t = 0:0.01:pi;
signal = sin(2*pi*t);
plot(signal)

%% het selecteren van alleen positieve waardes
% stap 1: wat gebeurt als je het volgende typt:
signalGTzero = signal > 0

%% Je krijgt een vector met enen en nullen.
% Hoe groot is de vector?
length(signalGTzero)

%% Het selecteren van een deel van een vector
signal(logical(ones(1,length(signal))))

signal(logical([ 1 1 1 1 1 1 ]))

signal(logical([ 1 1 0 0 0 0 0 0 0 1 1 1 1 ]))

pos = signal;
pos(pos<0) = 0;
plot(pos)

signal(signal<0) = 0;
signal(logical(zeros(1,length(signal))))