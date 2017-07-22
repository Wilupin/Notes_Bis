clear all;

journal_plot_params;

fidEta = fopen('../../Resultats/BMW/BMW_d2n1a2.25/w0eta', 'r');
%sed -i -e 's/^$/nan\ nan\ nan\ nan/' w0eta

donneeEta = fscanf(fidEta, '%f %f %f %f', [4 inf]);
donneeEta = donneeEta';

temps = donneeEta(:,1);
eta   = donneeEta(:,2);

setFigure_bis('Ma figure')

plot(temps, eta, 'COLOR', line_color_6, 'LineWidth', 1.5);
hold on
plot([temps(1) temps(end)], [0.25 0.25], '--', 'COLOR', 'black'); 
ylim([0, 0.35]);

journal_axis(gca, 'Temps du RG : $t$', '$\eta_k$');

