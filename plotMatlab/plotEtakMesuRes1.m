 %Script de lecture des données de la simulation

%clear all; 

fidX0 = fopen('../../ResMesu/IsingBMW_125MesuRes/data/phi0', 'r');

donnee0 = fscanf(fidX0, '%f %f %f %f %f', [5 inf]);
donnee0 = donnee0';

temps0   = donnee0(:,1);
etak0    = donnee0(:,4);


fidX0Bis = fopen('../../ResMesu/IsingBMW_130MesuRes/data/phi0', 'r');

donnee0Bis = fscanf(fidX0Bis, '%f %f %f %f %f', [5 inf]);
donnee0Bis = donnee0Bis';

temps0Bis   = donnee0Bis(:,1);
etak0Bis    = donnee0Bis(:,4);

fidX0Tris = fopen('../../ResMesu/IsingBMW_131MesuRes/data/phi0', 'r');

donnee0Tris = fscanf(fidX0Tris, '%f %f %f %f %f', [5 inf]);
donnee0Tris = donnee0Tris';

temps0Tris   = donnee0Tris(:,1);
etak0Tris    = donnee0Tris(:,4);


fidX1 = fopen('../../ResMesu/IsingBMW_133MesuRes/data/phi0', 'r');

donnee1 = fscanf(fidX1, '%f %f %f %f %f', [5 inf]);
donnee1 = donnee1';

temps1   = donnee1(:,1);
etak1    = donnee1(:,4);


fidX2 = fopen('../../ResMesu/IsingBMW_140MesuRes/data/phi0', 'r');

donnee2 = fscanf(fidX2, '%f %f %f %f %f', [5 inf]);
donnee2 = donnee2';

temps2   = donnee2(:,1);
etak2    = donnee2(:,4);

fidX3 = fopen('../../ResMesu/IsingBMW_146MesuRes/data/phi0', 'r');

donnee3 = fscanf(fidX3, '%f %f %f %f %f', [5 inf]);
donnee3 = donnee3';

temps3   = donnee3(:,1);
etak3    = donnee3(:,4);


setFigure_bis('Ma figure');

plot(temps0(1:180) -4, etak0(1:180), '-', 'LineWidth', 1.5);
hold on
plot(temps0Bis(1:200) -4, etak0Bis(1:200), '-', 'LineWidth', 1.5);
plot(temps0Tris -4, etak0Tris, '-', 'LineWidth', 1.5);
plot(temps1 -4, etak1, '-', 'LineWidth', 1.5);
plot(temps2 -4, etak2, '-', 'LineWidth', 1.5);
plot(temps3 -4, etak3, '-', 'LineWidth', 1.5);
plot([-7 -7], [0, 0.7], '--', 'Color', 'black');
plot([-12 0], [0.25, 0.25], '-.', 'Color', 'black');
xlim(gca, [-12 -3]);
ylim(gca, [0, 0.3]);

journal_axis(gca, 'Temps de RG : $t=\ln(k/\Lambda)$', '$\eta_k$')