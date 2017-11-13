function [ zadelHoogte ] = loopfiets( BBlengte,OBlengte,knieHoek,TuberculumHeup,voetHoogte)



heupEnkel= sqrt(BBlengte.^2+OBlengte.^2-2*BBlengte*OBlengte*cosd(knieHoek));

zadelHoogte=heupEnkel-TuberculumHeup+voetHoogte

end

