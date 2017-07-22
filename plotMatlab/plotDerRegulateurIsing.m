clear all;

delta = 0.60;
mu = 2;
alpha = 2.25;

g  = @(qx,qy) 0.5*(cos(qx)+cos(qy));
e0 = @(qx,qy) delta*delta*(1-g(qx,qy))./((g(qx,qy)+mu).*(1+mu));

epsMax = 2*delta*delta/(mu*mu-1);

qxplot = linspace(-pi,pi,50);
qyplot = linspace(-pi,pi,50);

[qxMesh, qyMesh] = meshgrid(qxplot, qyplot); 

reg = e0(qxMesh, qyMesh)./(exp(e0(qxMesh, qyMesh)./(epsMax)) -1);

k = 1;

tau1 = e0(qxMesh, qyMesh)./(epsMax)./0.01;
tau2 = e0(qxMesh, qyMesh)./(epsMax)./0.05;
eo   =  e0(qxMesh, qyMesh);

derReg1 = tau1.*eo./sinh(tau1)./sinh(tau1);
derReg2 = tau2.*eo./sinh(tau2)./sinh(tau2);

[ha, h2, h1] = make_2_axes4();

h_s2 = surf(h2, qxMesh, qyMesh, derReg2);
h_s1 = surf(h1, qxMesh, qyMesh, derReg1);

set(h_s1, 'EdgeColor', 'flat');
set(h_s2, 'EdgeColor', 'flat');

grid(h1, 'off');
grid(h2, 'off');
%colorbar


view(h1, 0,90)
view(h2, 0, 90)
% zlim([0.14, 0.25]);
xlim(h1, [-pi, pi]);
ylim(h1, [-pi, pi]);

xlim(h2, [-pi, pi]);
ylim(h2, [-pi, pi]);

journal_plot_params;

l_fsz = 10;

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


xlabel(h1,'$q_x$','Interpreter','LaTeX',...
    'FontSize',l_fsz);

%ylabel(h1,'$q_y$','Interpreter','LaTeX',...
%   'FontSize',l_fsz);


xlabel(h2,'$q_x$','Interpreter','LaTeX',...
    'FontSize',l_fsz);

ylabel(h2,'$q_y$','Interpreter','LaTeX',...
    'FontSize',l_fsz);

zlabel(h2,'$\mathcal{R}_k(q_x, q_y)$','Interpreter','LaTeX',...
    'FontSize',l_fsz);

zticks(h1, []);
xticks(h1, [-pi, 0, pi]);
yticks(h1, [-pi, 0, pi]);
xticklabels(h1, {'-\pi', '0', '\pi'});
yticklabels(h1, {'-\pi', '0', '\pi'});

zticks(h2, []);
xticks(h2, [-pi, 0, pi]);
yticks(h2, [-pi, 0, pi]);
xticklabels(h2, {'-\pi', '0', '\pi'});
yticklabels(h2, {'-\pi', '0', '\pi'});