clear all;


journal_plot_params;
setFigure('Ma figure');

x = linspace(0,3,200);

y = (x.^2)./(exp(x.^2/0.5)-1);
Rlim = [0, 0.55];


plot([0 0.85], [0.5 0.5], '--', 'LineWidth', 1.5, 'COLOR', line_color_2);
hold on
plot([0.85 0.85], [0 0.5], '--','LineWidth', 1.5, 'COLOR', line_color_2);
plot([0.85 3], [0 0], '--','LineWidth', 1.5, 'COLOR', line_color_2);

plot(x, y,'LineWidth', 1.5);

journal_axis(gca, '$q$', '$\mathcal{R}_k(q)$');
xticks(gca, 0);
yticks(gca, {});
ylim(Rlim); 

xlabh = get(gca,'XLabel');
set(xlabh,'Position',get(xlabh,'Position') + [+1.2 +0.05 0])

ylabh = get(gca,'YLabel');
set(ylabh,'Position',get(ylabh,'Position') + [+0 0 0])


dim = [0.2 0.2 0.3 0.3];
t_fsz = 10;
h_ann_a = annotation('textbox',dim,'String','$\sim k^2$','FitBoxToText','on');
set(h_ann_a, 'Units', 'normalized');
set(h_ann_a, 'EdgeColor', 'none');
set(h_ann_a, 'FontSize', t_fsz);
set(h_ann_a, 'Interpreter', 'latex');
set(h_ann_a, 'Position', [0.01 0.95 0 0]);

dim = [0.2 0.2 0.3 0.3];
t_fsz = 10;
h_ann_b = annotation('textbox',dim,'String','$k$','FitBoxToText','on');
set(h_ann_b, 'Units', 'normalized');
set(h_ann_b, 'EdgeColor', 'none');
set(h_ann_b, 'FontSize', t_fsz);
set(h_ann_b, 'Interpreter', 'latex');
set(h_ann_b, 'Position', [0.32 0.2 0 0]);