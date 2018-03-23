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
## @deftypefn {} {@var{retval} =} temp (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: harol <harol@PC-HAROLD>
## Created: 2018-03-23

function [pic seuil] = temp (A)
  A = [ 21.4 22.5 24.9 21.9 22.1 24.9 25.0 22.0 25.1 24.5 23.6 21.3 21.5 21.4 24.8 22.7 24.2 22.6 22.5 22.2 21.8 24.7 23.1 38.0 46.0 49.0 51.0 34.0 22.9 22.2 24.6 24.0 22.2 23.4 24.1 22.0 23.8 23.3 23.5 23.0 22.9 21.1 25.2 21.9 24.6 20.3 31.0 42.0 41.0 33.0 21.1 21.9 22.4 25.0 23.4 24.6 24.1 23.9 23.7 23.9 23.5 23.7 24.8 25.7 24.2 21.9 22.8 24.2 24.1 24.9 23.4 23.4 23.8 25.4 25.0 24.6 22.6 21.6 22.2 23.0 23.9 23.9 23.3 24.5 22.9 21.9 26.1 21.5 26.6 23.0 24.3 22.7 21.4 23.7 23.8 44.0 49.0 52.0 31.0 24.0 23.3 53.0 52.0 41.0 39.0 23.3 21.6 24.4 25.5 23.0 22.6 22.0 22.4 20.9 23.4 20.9 25.5 24.7 22.0 25.9 22.2 22.7 23.6 23.4 22.2 22.9 23.7 23.3 24.9 22.0 25.1 24.8 25.4 22.4 21.0 21.8 24.9 23.3 24.9 29.0 45.0 39.0 36.0 26.6 22.4 23.2 25.0 22.5 25.6 22.9 21.5 26.0 24.4 25.0 22.9 24.0 21.4 22.9 21.1 21.5 24.2 24.4 25.1 24.2 25.9 26.6 23.5 23.6 ]
  moy = mean(A)
  sig = std(A)
  seuil = moy + sig
  y = find(A>seuil)
  len = columns(y)
  pic = A(y)
  Day = [floor(y/24)+1]
  Hour = [y-floor(y/24)*24]
  plot(A)
  hold
  plot(y,A(y),'x','color','r')
  
endfunction  
