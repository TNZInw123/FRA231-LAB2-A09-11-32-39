RealAngleTable.R1 = (AngleTable.R1 - 104) * (180/(207-104));
RealAngleTable.R2 = (AngleTable.R2 - 105) * (180/(209-105));
RealAngleTable.R4 = (AngleTable.R4 - 101) * (180/(211-101));
RealAngleTable.R8 = (AngleTable.R8 - 101) * (180/(210-101));
RealAngleTable.R16 = (AngleTable.R16 - 99) * (180/(207-99));
RealAngleTable.R32 = (AngleTable.R32 - 102) * (90/(172-102));

figure;
clf('reset');

linetype1 = '-* ';

sgtitle('Stepper Motor Resolution', 'Interpreter','latex');

Xaxes = RealAngleTable.Pulse;
Yaxes = [RealAngleTable.R1, RealAngleTable.R2, RealAngleTable.R4, RealAngleTable.R8, RealAngleTable.R16, RealAngleTable.R32];

titles = ["Full Step", "Half Step", "1/4 Step", "1/8 Step", "1/16 Step", "1/32 Step"];

% Create subplots
ax_1 = subplot(2,3,1);
ax_2 = subplot(2,3,2);
ax_3 = subplot(2,3,3);
ax_4 = subplot(2,3,4);
ax_5 = subplot(2,3,5);
ax_6 = subplot(2,3,6);

ax = [ax_1, ax_2, ax_3, ax_4, ax_5, ax_6];
c = 'rgbmck';

for i = 1:6
    % Plot each characteristic (column i of Yaxes)
    plot(ax(i), Xaxes, Yaxes(:,i), [c(i) linetype1], 'LineWidth', 0.25);
    title(ax(i), titles(i));
    grid(ax(i), 'on');
    xlabel(ax(i), 'Pulse');
    ylabel(ax(i), 'Angle (°)');
    ylim(ax(i), [0,180]);
end

set(gcf, "Color", 'w');
