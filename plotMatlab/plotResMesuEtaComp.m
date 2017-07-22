
load ./donnees/IntMesuComp.mat

journal_plot_params;
setFigure('Ma figure');

plot(tempsBis, etaBis, '.-'); % Mauvaise courbe
hold on
plot(temps, etak, '.-');      % Bonne courbe
plot([-3 -3], [0 1], '--', 'COLOR', 'black');

journal_axis(gca, 'Temps du RG : $t$', '$\eta_k$')

%axis([-5 1 0 0.7])