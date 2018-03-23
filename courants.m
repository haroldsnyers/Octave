## Copyright (C) 2018 harol
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} function (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: harol <harol@PC-HAROLD>
## Created: 2018-03-23

function [] = courants (Ug, fg, R1, R2, C, L)
  pi = 3.14159265359
  w = 2 * pi * fg
  c = 1/(j*w*C)
  z = j * w *L
  A = [R1 c 0; 0 -c (R2+z); 1 -1 -1]
  b = [Ug; 0; 0]
  q = inv(A) * b 
  I1 = q(1)
  I2 = q(2)
  I3 = q(3)
end
