clear all;

delta = 0.60;
mu = 2;
beta = 0.869;

% Parameters
journal_plot_params;

% New figure
h_fig = figure;

height_1_1_bis = height_1_1 - 1;

[t,phi] = meshgrid(linspace(0,2*pi,30),linspace(0,9.5,30));
V = (delta*delta/(1+mu))*0.5*phi.^2 - log(cosh(2*delta*sqrt(beta*0.5*phi.^2)));
h_plot = polarplot3d(V, 'plottype','surf');


% Properties
set(h_fig, 'Units', units);
set(h_fig, 'Position', [1, 3, width_1, height_1_1_bis]);
set(h_fig,'Renderer','painters');
set(h_fig,'PaperUnits','centimeters');
set(h_fig,'PaperSize',[width_1 height_1_1_bis]);
set(h_fig,'PaperPositionMode','manual');
set(h_fig,'PaperPosition',[0 0 width_1 height_1_1_bis]);

grid off;
axis off;
shading flat

set(gca,'dataaspectratio',[1 1 1],'view',[-92, 38]);