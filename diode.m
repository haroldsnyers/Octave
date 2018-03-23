function [Vout] = amp_op (Vp, Vn, A)
  Vin = Vp - Vn
  Vout = A * Vin
end