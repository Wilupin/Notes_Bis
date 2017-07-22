X = [-4 4];
Y = [-4 4];

setFigure_bis('a');

journal_plot_params;

 plot(X, [0,0], '--', 'color', 'black', 'LineWidth', 1.2);
 hold on
 plot([0,0], Y, '--', 'color', 'black', 'LineWidth', 1.2);
% plot([0.25, 0.25], [0, pi], 'color', 'black', 'LineWidth', 0.5);
% plot([0.5, 0.5], [0, pi], 'color', 'black', 'LineWidth', 0.5);
% plot([0.75, 0.75], [0, pi], 'color', 'black', 'LineWidth', 0.5);
% plot([1, 1], [0, pi], 'color', 'black', 'LineWidth', 0.5);
% plot([1.25, 1.25], [0, pi], 'color', 'black', 'LineWidth', 0.5);
% plot([1.5, 1.5], [0, pi], 'color', 'black', 'LineWidth', 0.5);
% plot([1.75, 1.75], [0, pi], 'color', 'black', 'LineWidth', 0.5);
% plot([2, 2], [0, pi], 'color', 'black', 'LineWidth', 0.5);
% plot([2.25, 2.25], [0, pi], 'color', 'black', 'LineWidth', 0.5);
% plot([2.5, 2.5], [0, pi], 'color', 'black', 'LineWidth', 0.5);
% plot([2.75, 2.75], [0, pi], 'color', 'black', 'LineWidth', 0.5);
% plot([3, 3], [0, pi], 'color', 'black', 'LineWidth', 0.5);

journal_axis(gca, '$q_x$ ou $\tilde{q}_x$', '$q_y$ ou $\tilde{q}_y$');

%p = patch(gca, 'vertices', [0, 0; 0, pi; pi, pi; pi, 0], ...
 %         'faces', [1, 2, 3, 4], ...
%          'FaceColor', line_color_2, ...
%          'FaceAlpha', 0.3);
      
      p2 = patch(gca, 'vertices', [-pi, -pi; -pi, pi; pi, pi; pi, -pi], ...
          'faces', [1, 2, 3, 4], ...
          'FaceColor', 'red', ...
          'FaceAlpha', 0.1);
      
          p3 = patch(gca, 'vertices', [0, 0; pi, 0; pi, pi], ...
          'faces', [1, 2, 3], ...
          'FaceColor', line_color_6, ...
          'FaceAlpha', 0.4);
      
      set(gca,'dataaspectratio',[1 1 1]);
      xlim(X);
      ylim(Y);
      
  xticks(gca, [0]);
  yticks(gca, [0]);
  box off;
