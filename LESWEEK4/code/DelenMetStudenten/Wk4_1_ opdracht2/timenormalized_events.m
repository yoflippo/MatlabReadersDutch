function [ normalized_rto, normalized_rhs, normalized_lto, std_rto, std_rhs, std_lto ] = timenormalized_events(lhs,rto,rhs,lto )
% timenormalized_events: calculates a 0-100% time base
%This function calculates the mean time normalized of the events. 

% AUTHOR(S) AND VERSION-HISTORY
% Version 1.0 Bart van Trigt

%Right Toe off (rto)
for k=1:length(lhs)-1
totaal=lhs(k+1)-lhs(k);
afstand=rto(k)-lhs(k);
normalized_rto(k)=(afstand/totaal)*100;
end
std_rto=std(normalized_rto)
normalized_rto=mean(normalized_rto);

%Right Heel Strik (rhs)
for k=1:length(lhs)-1
totaal=lhs(k+1)-lhs(k);
afstand=rhs(k)-lhs(k);
normalized_rhs(k)=(afstand/totaal)*100;
end

std_rhs=std(normalized_rhs))
normalized_rhs=mean(normalized_rhs);

%left toe off (lto)
for k=1:length(lhs)-1
totaal=lhs(k+1)-lhs(k);
afstand=lto(k)-lhs(k);
normalized_lto(k)=(afstand/totaal)*100;
end

std_lto=std(normalized_lto)
normalized_lto=mean(normalized_lto);



end

