clear all;
close all;
clc;
decimal = 5;
number = 1.23456789123
decimal = 10^decimal;
big = number*decimal;
rounded = round(big);
trunced = rounded/decimal;
output = sprintf('%g',trunced)