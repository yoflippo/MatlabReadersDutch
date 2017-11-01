versnelling1=[5 8 4];
versnelling2=[3 7 6];

function [totaleVersnelling, totaalElementen]= vectorToMatrix(versnelling1,versnelling2)

totaleVersnelling(1,:)= versnelling1;
totaleVersnelling(2,:)= versnelling2;

totaalElementen=numel(totaleVersnelling);

end
