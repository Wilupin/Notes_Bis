clear all;

journal_plot_params;

theta = linspace(0, 2*pi, 100);

g1 = 25/12-4*cos(theta)+3*cos(2*theta)-(4/3)*cos(3*theta)+(1/4)*cos(4*theta) + ...
     i*(4*sin(theta)-3*sin(2*theta)+(4/3)*sin(3*theta)-(1/4)*sin(4*theta));

g2 = -(1/2)*cos(2*theta)+2*cos(theta)-3/2+i*(-(1/2)*sin(2*theta)+2*sin(theta));

[hf, h1, h2] = make_2_axes_bis();

Ylim = [-8, 8];
Xlim = [-2, 12];
 
plot(h2,real(g1), imag(g1), 'color', line_color_6, 'LineWidth', 1.5);
hold(h2, 'on')
plot(h2, cos(theta), sin(theta), '-', 'color', line_color_2, 'LineWidth', 1.2);
plot(h2, Xlim, [0, 0], 'color', 'black');
plot(h2, [0, 0], Ylim, 'color', 'black');


Ylim1 = [-3, 3];
Xlim1 = [-4.5, 1.5];

plot(h1,real(g2), imag(g2), 'color', line_color_6, 'LineWidth', 1.5);
hold(h1, 'on')
plot(h1, cos(theta), sin(theta), '-', 'color', line_color_2, 'LineWidth', 1.2);
plot(h1, Xlim1, [0, 0], 'color', 'black');
plot(h1, [0, 0], Ylim1, 'color', 'black')

xlim(h1, Xlim1);
ylim(h1, Ylim1);
xlim(h2, Xlim);
ylim(h2, Ylim);


set(h1,'dataaspectratio',[1 1 1]);
set(h2,'dataaspectratio',[1 1 1]); 

xlabel(h2,'$\mathcal{R}e(f_A)$','Interpreter','LaTeX',...
    'FontSize',l_fsz);
xlabel(h1,'$\mathcal{R}e(f_A)$','Interpreter','LaTeX',...
    'FontSize',l_fsz);
ylabel(h1,'$\mathcal{I}m(f_A)$','Interpreter','LaTeX',...
    'FontSize',l_fsz);

set(h1, 'Units', 'normalized');
set(h1, 'LineWidth', alw);
set(h1, 'FontUnits','points');
set(h1, 'FontWeight','normal');
set(h1, 'FontSize', fsz);
set(h1, 'FontName', f_name);

set(h2, 'Units', 'normalized');
set(h2, 'LineWidth', alw);
set(h2, 'FontUnits','points');
set(h2, 'FontWeight','normal');
set(h2, 'FontSize', fsz);
set(h2, 'FontName', f_name);
 