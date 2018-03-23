##Séance 2 ECAM 2018
##Exercices 3 : translation


function [x,y] = fill_Polygone(tx,ty)
  t = (1/16:1/8:1)' * 2 * pi;
  x = cos (t);
  y = sin (t);
  x1 = x + tx
  y1 = y + ty
  fill (x, y, 'g', x1, y1, 'r')
endfunction  
