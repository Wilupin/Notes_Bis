function [h_fig, h_a, h_b] = make_2_axes4()
%% This function produces a figure with 2 axes, and returns the figure and
%% axis handles.  

journal_plot_params;
norm_ax_width = 0.31;
%norm_ax_height = 0.75;
norm_ax_height = 0.68;
norm_inset_left = 0.1;
norm_inset_bottom = 0.55;
norm_inset_width = 0.4;
norm_inset_height = 0.4;
left_space_1 = 0.16;
left_space_2 = 0.12;
v_space = 0.215;
fig_b_start = left_space_1+norm_ax_width+left_space_2+0.01;
v_space_bis = v_space + 0.045;

left_inset_start = left_space_1 + norm_ax_width + left_space_2 ...
    + norm_inset_left*norm_ax_width;
bottom_inset_start = v_space + norm_inset_bottom * norm_ax_height;
inset_width = norm_inset_width * norm_ax_width;
inset_height = norm_inset_height * norm_ax_height;

h_fig = figure('units','centimeters',...
    'Position', [10 10 width_1 height_1_2+0.8]);

set(h_fig,'Renderer','painters');
set(h_fig,'PaperUnits','centimeters');
set(h_fig,'PaperSize',[width_1 height_1_2]);
set(h_fig,'PaperPositionMode','manual');
set(h_fig,'PaperPosition',[0 0 width_1 height_1_2]);
%set(h_fig,'color','none');

h_a = axes('Units','normalized',...
    'LineWidth',alw,...
    'Position',[left_space_1 v_space_bis norm_ax_width norm_ax_height],...
    'FontUnits','points', ...
    'FontWeight','normal',...
    'FontSize', fsz,...
    'FontName', f_name);
dim = [0.2 0.2 0.3 0.3];
h_ann_a = annotation('textbox',dim,'String','(a)','FitBoxToText','on', 'Color', 'white');
set(h_ann_a, 'Units', 'normalized');
set(h_ann_a, 'EdgeColor', 'none');
set(h_ann_a, 'FontSize', t_fsz);
set(h_ann_a, 'Position', [left_space_1+norm_ax_width-0.085 v_space_bis 0 norm_ax_height]);


h_b = axes('Units','normalized',...
     'LineWidth',alw,...
     'Position',[fig_b_start v_space_bis norm_ax_width norm_ax_height],...
     'FontUnits','points', ...
     'FontWeight','normal',...
     'FontSize', fsz,...
     'FontName', f_name);
 h_ann_b = annotation('textbox',dim,'String','(b)','FitBoxToText','on', 'Color', 'white');
set(h_ann_b, 'Units', 'normalized');
set(h_ann_b, 'EdgeColor', 'none');
set(h_ann_b, 'FontSize', t_fsz);
set(h_ann_b, 'Position', [fig_b_start+norm_ax_width-0.085 v_space_bis norm_ax_width norm_ax_height]);
 