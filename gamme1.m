#vitesse allant de 0 � la vitesse de la lumi�re
v = [0:8000000:299792458]

#calcul de gamma en fonction de la vitesse
y = gamma (v)

hold on
plot (v,y)
axis("auto")
title('la valeur de gamma en fonction de la vitesse de l� objet consid�r�')
xlabel('v')
ylabel('y')
legend('gamma')
