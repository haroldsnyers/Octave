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
## @deftypefn {} {@var{retval} =} draw_pol (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: harol <harol@PC-HAROLD>
## Created: 2018-03-23

function [] = draw_pol (tx, ty, tz)
  A = [1 0 tx; 0 1 ty; 0 0 1]
  t = (1/16:1/8:1) * 2 * pi
  x = cos (t)
  y = sin (t)
  n = [x; y; 1]
  p = A * n

endfunction
