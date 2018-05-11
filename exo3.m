## Copyright (C) 2018 harol
## Author: harol <harol@PC-HAROLD>
## Created: 2018-03-23
## Séance 1, exercices 1, diode

Is = 100e-15;
T = 25;
Vak = [-5:0.01:0.8];

Id = diode(Is,T,Vak)
plot (Vak,Id)
