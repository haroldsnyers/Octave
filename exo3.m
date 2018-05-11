Is = 100e-15;
T = 25;
Vak = [-5:0.01:0.8];

Id = diode(Is,T,Vak)
plot (Vak,Id)