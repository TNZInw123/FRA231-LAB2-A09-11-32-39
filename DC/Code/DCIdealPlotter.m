figure;
clf('reset');

linetype1 = '-* ';

sgtitle('Brushed DC Motor Theory Characteristics Graph', 'Interpreter','latex');

Xaxes = TLoad'; % Torque (Nm)
Yaxes = [T_S', T_C', PowerOutput', Efficiency']; % Ensure Yaxes is a 2D matrix

titles = ["Torque-Speed", "Torque-Current", "Power", "Efficiency"];
ylabels = ["Speed (RPM)", "Current (A)", "Power (W)", "Efficiency (%)"];

% Create subplots
ax_1 = subplot(2,2,1);
ax_2 = subplot(2,2,2);
ax_3 = subplot(2,2,3);
ax_4 = subplot(2,2,4);

ax = [ax_1, ax_2, ax_3, ax_4];
c = 'rgbm';

for i = 1:4
    % Plot each characteristic (column i of Yaxes)
    plot(ax(i), Xaxes, Yaxes(:,i), [c(i) linetype1], 'LineWidth', 1.5);
    title(ax(i), titles(i));
    grid(ax(i), 'on');
    xlabel(ax(i), 'Torque (Nm)');
    ylabel(ax(i), ylabels(i));
    xticks(ax(i), TLoad); % Ensure TLoad is meaningful
end

ylim(ax(2), [0, 5]);
ylim(ax(3), [0, 20]);
ylim(ax(4), [0, 100]);

% Set figure background color
set(gcf, "Color", 'w');
