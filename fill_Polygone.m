## Copyright (C) 2018 harol
## Author: harol <harol@PC-HAROLD>
## Created: 2018-03-23
## Séance 2, exercices 3, translation polygone


function [x,y] = fill_Polygone(tx,ty)
  t = (1/16:1/8:1)' * 2 * pi;
  x = cos (t);
  y = sin (t);
  x1 = x + tx
  y1 = y + ty
  fill (x, y, 'g', x1, y1, 'r')
endfunction  
