## Copyright (C) 2018 harol
## Author: harol <harol@PC-HAROLD>
## Created: 2018-03-23
## Séance 2, exercices 2, fonction permettant de résoudre un circuit possèdant une certaine structure 

function [I1, I2, I3] = courants (Ug, fg, R1, R2, C, L)
  pi = 3.14159265359;
  w = 2 * pi * fg;
  c = 1/(j*w*C);
  z = j * w *L;
 	A = [R1 c 0; 0 -c (R2+z); 1 -1 -1];
  b = [Ug; 0; 0];
 	q = inv(A) * b;
  I1 = q(1);
  I2 = q(2);
 	I3 = q(3);
end
