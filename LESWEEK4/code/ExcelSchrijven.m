% 3.	Genereer een sinus, cosinus en een tangens op basis van 
% vector t=0:1/10:100; met amplitude 2. Schrijf deze signalen naar 
% afzonderlijke kolommen.
close all; clear all; clc;
t = 0: 1/10 : 100;
matrix = [2*sin(t)' 2*cos(t)' 2*tan(t)'];
nameFile = 'ExcelSchrijven1.xlsx';
if exist(nameFile)
    delete(nameFile)
end
xlswrite(nameFile,'test');
xlswrite(nameFile,matrix,'data');
winopen('ExcelSchrijven1.xlsx')