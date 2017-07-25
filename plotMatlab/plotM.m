clear all;

journal_plot_params;

h_fig = figure;

height_1_1_bis = height_1_1 - 2;

% Properties
set(h_fig, 'Units', units);
set(h_fig, 'Position', [1, 3, width_1, height_1_1_bis]);
set(h_fig,'Renderer','painters');
set(h_fig,'PaperUnits','centimeters');
set(h_fig,'PaperSize',[width_1 height_1_1_bis]);
set(h_fig,'PaperPositionMode','manual');
set(h_fig,'PaperPosition',[0 0 width_1 height_1_1_bis]);

T  = linspace(0, 2.5, 100);
m  = sqrt(1-T.^2).*(T<=1) + 0;
m2 = 1.4*T.^2./(exp(1.4*T.^(2))-1);

plot(T,m, 'color', line_color_6, 'LineWidth', 1.5)
hold on
plot(T,m2, '--', 'color',line_color_2, 'LineWidth', 1.5)
journal_axis(gca, 'Temperature : $T$', 'Aimantation : $m$')

ylim([0, 1.2]);
xlim([0, 2.5]);

xticks(gca, [0, 1]);
xticklabels(gca, {0, 'T_c'});
yticks(gca, [0, 1]);


h_fig2 = figure;

height_1_1_bis = height_1_1 - 2;

% Properties
set(h_fig2, 'Units', units);
set(h_fig2, 'Position', [1, 3, width_1, height_1_1_bis]);
set(h_fig2,'Renderer','painters');
set(h_fig2,'PaperUnits','centimeters');
set(h_fig2,'PaperSize',[width_1 height_1_1_bis]);
set(h_fig2,'PaperPositionMode','manual');
set(h_fig2,'PaperPosition',[0 0 width_1 height_1_1_bis]);

m3  = sqrt(1-T.^2).*(T<=0.8) + 0;
plot(T(1:32), m3(1:32), 'color', line_color_6, 'LineWidth', 1.5);
hold on
plot([T(32), T(end)], [0,0], 'color', line_color_6, 'LineWidth', 1.5);

journal_axis(gca, 'Temperature : $T$', 'Parametre d''ordre')

ylim([0, 1.2]);
xlim([0, 2]);

xticks(gca, [0, T(32)]);
xticklabels(gca, {0, 'T_c'});
yticks(gca, [0, 1]);


