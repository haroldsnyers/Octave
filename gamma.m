##travail Séance 2 2018 ECAM


function [y] = gamma (v)
  #vitesse de la lumière
  c = 299792458
  #équation de determinant gamma
  #gamma représente l'effet de la relativité du temps
  a = (v.^2)/(c.^2);
  s = sqrt(1-a);
  y = (1)./s;
endfunction
