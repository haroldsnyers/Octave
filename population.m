## Copyright (C) 2018 harol
## Author: harol <harol@PC-HAROLD>
## Created: 2018-04-15
## Work 3, graphic for the study of the population 


function [pic seuil] = population (A)
  A = [180, 188, 183, 177, 187, 181, 178, 175, 180, 183, 181, 188, 178, 186, 171, 179, 176, 176, 179, 186, 183, 204, 171, 197, 170, 202, 176, 196, 183, 176, 189, 178, 180, 178, 182, 183, 182, 187, 177, 184, 183, 175, 184, 187, 184, 188, 177, 175, 188, 186, 191, 195, 193, 174, 194, 193, 178, 181, 188, 162, 166, 179, 181, 176, 177, 189, 184, 175, 175, 177, 186, 187, 180, 175, 187, 176, 204, 196, 198, 175, 198, 198, 195, 190, 202, 208, 180, 165, 189, 172, 179, 173, 175, 185, 166, 185, 163, 161, 171, 185];
  moy = mean(A)
  sig = std(A);
  D = max(A) - min(A);
  seuil1 = moy + sig
  seuil2 = moy - sig
  y = find(A>seuil1);
  s = find(A<seuil2);
  len = columns(y);
  pic = A(y);
  picB = A(s);
  
  B = [188, 189, 182, 176, 181, 186, 181, 187, 184, 185, 185, 176, 180, 194, 193, 197, 202, 183, 188, 184, 203, 199, 177, 175, 178, 189, 189, 183, 176, 179, 183, 189, 179, 184, 175, 177, 177, 184, 187, 178, 185, 180, 178, 176, 187, 185, 183, 182, 177, 186, 189, 186, 184, 183, 180, 188, 187, 181, 184, 183, 187, 169, 171, 167, 171, 193, 196, 176, 183, 188, 176, 199, 175, 204, 200, 204, 182, 191, 179, 182, 203, 206, 201, 199, 203, 173, 170, 167, 182, 187, 171, 187, 174, 186, 189, 186, 169, 186, 172, 183];
  moy_ = mean(B)
  sig_ = std(B);
  D_ = max(B) - min(B);
  seuil_1 = moy_ + sig_
  seuil_2 = moy_ - sig_
  y_ = find(B>seuil_1);
  s_ = find(B<seuil_2);
  len_ = columns(y_);
  pic_ = B(y_);
  picB_ = B(s_);
  
  subplot(2,2,1)
    plot(A, 'linewidth', 1.5, 'color', 'g')
    hold on
    plot(y,A(y),'x','color','r','markersize', 8)
    hold on 
    plot(s, A(s),'x', 'color', 'c', 'markersize', 8)
    hold on
    plot([0 100], [seuil1 seuil1], '--', 'color', 'r', 'linewidth', 1.5)
    hold on
    plot([0 100], [seuil2 seuil2], '--', 'color', 'c', 'linewidth', 1.5)
    hold off
    h = legend('sample', 'pic', 'pic-bas', 'seuil haut', 'seuil bas')
    set (h, 'textposition', 'right')
    set (h, 'location', 'northeastoutside')
    set (gca,'Color','k')
    set (gca, "linewidth", 4, "fontsize", 12)
    legend boxoff
    title('graph representing sample of population 1')
    xlabel('n')
    ylabel('Height [cm]')
  subplot(2,2,2)
    stem(A)
    hist(A,D, 'edgecolor', 'w')
    title('histogram of frequencies for population 1')
    xlabel('Height')
    ylabel('Counting') 
  subplot(2,2,3)
    plot(B, 'linewidth', 1.5, 'color', 'k')
    hold on
    plot(y_,B(y_),'x','color','r', 'markersize', 8)
    hold on 
    plot(s_, B(s_),'x', 'color', 'b', 'markersize', 8)
    hold on
    plot([0 100], [seuil_1 seuil_1], '--', 'color', 'r', 'linewidth', 1.5)
    hold on
    plot([0 100], [seuil_2 seuil_2], '--', 'color', 'b', 'linewidth', 1.5)
    hold off
    h = legend('sample', 'pic', 'pic-bas', 'seuil haut', 'seuil bas')
    set (h, 'textposition', 'right')
    set (h, 'location', 'northeastoutside')
    set (gca,'Color','g')
    set (gca, "linewidth", 4, "fontsize", 12)
    legend boxoff
    title('graph representing sample of population 2')
    xlabel('n')
    ylabel('Height [cm]')
  subplot(2,2,4)
    stem(B)
    hist(B,D_, 'facecolor', 'b',"edgecolor", "w")
    title('histogram of frequencies for population 2')
    xlabel('Height')
    ylabel('Counting')
endfunction
