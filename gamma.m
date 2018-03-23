function [y] = gamma (v)
  #vitesse de la lumi�re
  c = 299792458
  #�quation de determinant gamma
  #gamma repr�sente l'effet de la relativit� du temps
  a = (v.^2)/(c.^2);
  s = sqrt(1-a);
  y = (1)./s;
endfunction