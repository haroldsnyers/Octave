## Copyright (C) 2018 harol
## Author: harol <harol@PC-HAROLD>
## Created: 2018-03-23
## travail séance 1


function [y] = gamma (v)
  #vitesse de la lumière
  c = 299792458
  #équation de determinant gamma
  #gamma représente l'effet de la relativité du temps
  a = (v.^2)/(c.^2);
  s = sqrt(1-a);
  y = (1)./s;
endfunction
