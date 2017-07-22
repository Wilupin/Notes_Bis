% Script de lecture des données de la simulation

%clear all; 

fidX1 = fopen('../../ResMesu/IsingBMW_122MesuRes/data/phi0', 'r');

donnee1 = fscanf(fidX1, '%f %f %f %f %f', [5 inf]);
donnee1 = donnee1';

temps1   = donnee1(:,1);
etak1    = donnee1(:,4);


fidX2 = fopen('../../D_IsingBMW/IsingBMW_114Phi/data/phi0', 'r');

donnee2 = fscanf(fidX2, '%f %f %f %f %f', [5 inf]);
donnee2 = donnee2';

temps2   = donnee2(:,1);
etak2    = donnee2(:,4);

fidX3 = fopen('../../ResMesu/IsingBMW_125MesuRes/data/phi0', 'r');

donnee3 = fscanf(fidX3, '%f %f %f %f %f', [5 inf]);
donnee3 = donnee3';

temps3   = donnee3(:,1);
etak3    = donnee3(:,4);


setFigure_bis('Ma figure');

plot(temps1 -4, etak1, '-', 'LineWidth', 1.5);
hold on
plot(temps2 -4, etak2, '-.', 'LineWidth', 1.5);
plot(temps3 -4, etak3, ':', 'LineWidth', 1.5);
plot([-7 -7], [0, 0.7], '--', 'Color', 'black');

xlim(gca, [-9 -3]);
ylim(gca, [0, 0.7]);

journal_axis(gca, 'Temps de RG : $t=\ln(k/\Lambda)$', '$\eta_k$')