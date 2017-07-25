clear all;

delta = 0.60;
mu = 2;

g  = @(qx,qy) 0.5*(cos(qx)+cos(qy));
e0 = @(qx,qy) delta*delta*(1-g(qx,qy))./((g(qx,qy)+mu).*(1+mu));

epsMax = 2*delta*delta/(mu*mu-1);

qxplot = linspace(-pi,pi,50);
qyplot = linspace(-pi,pi,50);

[qxMesh, qyMesh] = meshgrid(qxplot, qyplot); 

reg = e0(qxMesh, qyMesh)./(exp(e0(qxMesh, qyMesh)./(epsMax)) -1);

setFigure_bis('ma figure');

h_s = surf(qxMesh, qyMesh, reg); 
set(h_s, 'EdgeColor', 'none');

%shading interp
%lighting gouraud
grid off
view(-63,17)
zlim([0.14, 0.25]);
xlim([-pi-0.1, pi+0.1]);
ylim([-pi-0.1, pi+0.1]);

journal_plot_params;

l_fsz = 11;

set(gca, 'Units', 'normalized');
set(gca, 'LineWidth', alw);
%set(gca, 'Position', [left_space+0.03 v_space norm_ax_width norm_ax_height]);
set(gca, 'FontUnits','points');
set(gca, 'FontWeight','normal');
set(gca, 'FontSize', fsz);
set(gca, 'FontName', f_name);


xlabel('$q_x$','Interpreter','LaTeX',...
    'FontSize',l_fsz);

ylabel('$q_y$','Interpreter','LaTeX',...
    'FontSize',l_fsz);

zlabel('$\mathcal{R}_k(q_x, q_y)$','Interpreter','LaTeX',...
    'FontSize',l_fsz);
zticks(gca, []);
xticks(gca, [-pi, 0, pi]);
yticks(gca, [-pi, 0, pi]);
xticklabels(gca, {'-\pi', '0', '\pi'});
yticklabels(gca, {'-\pi', '0', '\pi'});