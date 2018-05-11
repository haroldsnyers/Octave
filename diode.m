function [Id] = diode (Is,T,Vak)
  k = 1.38e-23;
  q = 1.6e-19;
  Vt = (k*(T+273))/q
  Id = Is*(e.^(Vak/Vt)-1)
end