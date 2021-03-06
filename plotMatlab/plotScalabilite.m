% Pour nc = ngl = 18

t  = [60, 30, 19.8, 15.23, 12.7, 10.8, 11.6, 10.0, 9.3, 8.2];
t2 = [44, 22.8, 16.1, 12.7 ,11, 9.0, 7.97 , 7.01, 6.11, 5.9];
t3 = [12.7, 3.36, 1.843, 1.385, 1.125, 1.8766, 0.8420, 0.8232, 1.18, 1.1, 1.39]
n  = [1,2,3,4,5,6,7,8,9,10];
n3 = [1,4,8,12, 16, 18, 22, 26, 30, 34, 38]

x = linspace(1,10,200);
%y = 43.69*x.^(-0.8896);
y = 44./x;

x2 = linspace(1,38, 200);
y2 = 12.7./x2

setFigure_bis('a');

journal_plot_params;

loglog(n, t2, 'o', 'MarkerFaceColor', line_color_6, 'MarkerSize', 4, 'MarkerEdgeColor', line_color_4);
hold on
loglog(n3, t3, 'd', 'MarkerFaceColor', line_color_5, 'MarkerSize', 4, 'MarkerEdgeColor', line_color_5);
loglog(x,y, 'color', 'red', 'LineWidth', 1);
loglog(x2,y2, 'color', 'red', 'LineWidth', 1);

xlim([1,40]);

journal_axis(gca, '$n_{proc}$', '$\tau_c$')