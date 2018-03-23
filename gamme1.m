#vitesse allant de 0 à la vitesse de la lumière
v = [0:8000000:299792458]

#calcul de gamma en fonction de la vitesse
y = gamma (v)

hold on
plot (v,y)
axis("auto")
title('la valeur de gamma en fonction de la vitesse de l’ objet considéré')
xlabel('v')
ylabel('y')
legend('gamma')
