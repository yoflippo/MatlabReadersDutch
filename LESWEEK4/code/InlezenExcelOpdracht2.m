[FileName,PathName,FilterIndex]  = uigetfile('.xls');
num = xlsread([PathName FileName]);
plot(num(:,4),num(:,8));