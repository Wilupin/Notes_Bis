t = [5, 12.86, 28, 57, 104, 193, 322, 546, 870, 1290];
N = [10, 12, 14, 16, 18, 20, 22, 24, 26, 28];


t22 = [44.42 ]
NGL2 = [16]
t2 = [6.86, 9.52, 12.73, 16.03];
NGL = [12 14 16 18]; % Pour NC=8;


setFigure_bis('Ma Figure')
% On cherche si t= alpha*N^6

logalpha = log(t2(end)) - 2*log(NGL(end));
Y = 2*log(NGL) + logalpha;

plot(log(NGL),log(t2), 'o', 'MarkerFaceColor', line_color_5, 'MarkerSize', 4);
hold on
plot(log(NGL), Y, '-', 'LineWidth', 1.5, 'COLOR', line_color_2);

logt = log(t2);
logN = log(NGL);

journal_axis(gca, '$\ln(n_{gl})$', '$\ln(\tau_c)$')

%figure(2)
%plot(log(t(2:end)./t(1:end-1).* (N(1:end-1)./N(2:end)).^6), 'o');
