clear all; close all; clc;
% Het aanmaken van een vector met lineair toenemende waardes
stapgrootte = 0.13
linVector = 0:stapgrootte:stapgrootte*20;
% Toepassing van de diff() functie
diffVector = diff(linVector)
