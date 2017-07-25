clear all;


journal_plot_params;
t_fsz = 10;
[hfig, hAx2, hAx1] = make_2_axes();

set(hAx2, 'FontSize', t_fsz);
set(hAx1, 'FontSize', t_fsz);


x = linspace(0,3,200);

y = (x.^2)./(exp(x.^2/0.5)-1);
Rlim = [0, 0.55];



%plot(hAx2,[0 0.85], [0.5 0.5], '--', 'LineWidth', 1.5, 'COLOR', line_color_2);
%hold(hAx2, 'on')
%plot(hAx2,[0.85 0.85], [0 0.5], '--','LineWidth', 1.5, 'COLOR', line_color_2);
%plot(hAx2,[0.85 3], [0 0], '--','LineWidth', 1.5, 'COLOR', line_color_2);

plot(hAx2, x, y,'LineWidth', 1.5, 'color', line_color_6);

xlabel(hAx2, '$q$', 'Interpreter', 'latex','FontSize', t_fsz)
ylabel(hAx2,  '$\mathcal{R}_k(q)$', 'Interpreter', 'latex','FontSize', t_fsz);
xticks(hAx2, 0);
yticks(hAx2, {});
ylim(hAx2, Rlim); 
xlim(hAx2, [0 3]);

xlabh = get(hAx2,'XLabel');
set(xlabh,'Position',get(xlabh,'Position') + [+1.2 +0.125 0])

ylabh = get(hAx2,'YLabel');
set(ylabh,'Position',get(ylabh,'Position') + [+0 0 0])



dim = [0.2 0.2 0.3 0.3];
t_fsz = 10;
h_ann_a = annotation('textbox',dim,'String','$\sim k^2$','FitBoxToText','on');
set(h_ann_a, 'Units', 'normalized');
set(h_ann_a, 'EdgeColor', 'none');
set(h_ann_a, 'FontSize', t_fsz);
set(h_ann_a, 'Interpreter', 'latex');
set(h_ann_a, 'Position', [-0.01 0.95 0 0]);

dim = [0.2 0.2 0.3 0.3];
t_fsz = 10;
h_ann_b = annotation('textbox',dim,'String','$k$','FitBoxToText','on');
set(h_ann_b, 'Units', 'normalized');
set(h_ann_b, 'EdgeColor', 'none');
set(h_ann_b, 'FontSize', t_fsz);
set(h_ann_b, 'Interpreter', 'latex');
set(h_ann_b, 'Position', [0.175 0.25 0 0]);








x1 = linspace(0,4,200);

y1 = (x1.^2).*exp(x1.^2)./(exp(x1.^2/0.5)-1);
Rlim = [0, 0.55];




p = patch(hAx1, 'vertices', [0, 0; 0, 0.55; 3, 0.55; 3, 0], ...
          'faces', [1, 2, 3, 4], ...
          'FaceColor', line_color_2, ...
          'FaceAlpha', 0.2);
set(p, 'EdgeColor', 'none');
hold on 
plot(hAx1, x1, y1,'LineWidth', 1.5, 'color', line_color_6);

xlabel(hAx1, '$q$', 'Interpreter', 'latex', 'FontSize', t_fsz)
ylabel(hAx1,  '$\partial_t \mathcal{R}_k(q)$', 'Interpreter', 'latex','FontSize', t_fsz );
xticks(hAx1, 0);
yticks(hAx1, {});
ylim(hAx1, Rlim); 

x1labh = get(hAx1,'XLabel');
set(x1labh,'Position',get(x1labh,'Position') + [+1.8 +0.125 0])

y1labh = get(hAx1,'YLabel');
set(y1labh,'Position',get(y1labh,'Position') + [+0 0 0])



dim = [0.2 0.2 0.3 0.3];
h_ann_b = annotation('textbox',dim,'String','$k$','FitBoxToText','on');
set(h_ann_b, 'Units', 'normalized');
set(h_ann_b, 'EdgeColor', 'none');
set(h_ann_b, 'FontSize', t_fsz);
set(h_ann_b, 'Interpreter', 'latex');
set(h_ann_b, 'Position', [0.655 0.25 0 0]);

set(hAx1, 'box', 'on');