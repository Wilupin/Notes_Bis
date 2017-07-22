clear all;

journal_plot_params;

make_2_axes();

hAxes = findobj(gcf,'type','axes');

hAx  = hAxes(1);
hAx2 = hAxes(2);
 
phim = 5;
N    = 200; 

phi = linspace(-phim,phim, N);

Vlim  = [-1 5];
V2lim = [-5 25];

V  = (phi/4.5).^14;
V2 = phi.^2 - log(cosh(phi));

plot(hAx ,phi, V, 'COLOR', 'blue', 'LineWidth', 1.5);
hold(hAx, 'on') 
plot(hAx, 3.6, 0, 'o', 'MarkerFaceColor' , line_color_4,...
    'MarkerEdgeColor', line_color_4, 'MarkerSize', 8);
plot(hAx, -3.6, 0, 'o', 'MarkerFaceColor' , line_color_4,...
    'MarkerEdgeColor', line_color_4, 'MarkerSize', 8);
plot(hAx, phi, linspace(0, 0, N), 'COLOR', 'black')
plot(hAx, [0 0], Vlim, 'COLOR', 'black');


plot(hAx2 ,phi, V2, 'COLOR', 'blue', 'LineWidth', 1.5);
hold(hAx2, 'on') 
plot(hAx2, 0, 0, 'o', 'MarkerFaceColor' , line_color_4,...
    'MarkerEdgeColor', line_color_4, 'MarkerSize', 8);
plot(hAx2, phi, linspace(0, 0, N), 'COLOR', 'black')
plot(hAx2, [0 0], V2lim, 'COLOR', 'black');


ylim(hAx, Vlim);
ylim(hAx2, V2lim);

xticks(hAx, [0]);
yticks(hAx, [0]);

xticks(hAx2, [0]);
yticks(hAx2, [0]);
%xticklabels({'0'})

xlabel(hAx2,'$\phi$','Interpreter','LaTeX',...
    'FontSize', 10);
xlabel(hAx,'$\phi$','Interpreter','LaTeX',...
    'FontSize', 10);

ylabel(hAx2,'$V(\phi)$','Interpreter','LaTeX',...
    'FontSize', 10);


xlabh = get(hAx,'XLabel');
set(xlabh,'Position',get(xlabh,'Position') + [4 +1.25 0])

xlabh2 = get(hAx2,'XLabel');
set(xlabh2,'Position',get(xlabh2,'Position') + [4 +6 0])

ylabh2 = get(hAx2,'YLabel');
set(ylabh2,'Position',get(ylabh2,'Position') + [0.5 +5 0])