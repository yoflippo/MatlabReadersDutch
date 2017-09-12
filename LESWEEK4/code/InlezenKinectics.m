[FileName,PathName,FilterIndex]  = uigetfile('.xlsx');
num = xlsread([PathName FileName]);
plot(num(:,1:6));