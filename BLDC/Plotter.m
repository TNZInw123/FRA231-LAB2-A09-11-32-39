figure;
clf('reset');

linetype1 = '-* ';
linetype2 = '-';

sgtitle('BLDC Graph', 'Interpreter','latex');

Xaxes = 0;
Yaxes = [];
XError = (0:5:100);
for i = 1:21
    m = mod(i, 2);
    if m == 0
        XError(1,i) = nan;
    end
end

titles = ["Rotary Potentiometer A", "Rotary Potentiometer B", ...
         "Rotary Potentiometer C", "Slide Potentiometer A", ...
         "Slide Potentiometer B"];

ax_1 = subplot(2,2,1);
ax_2 = subplot(2,2,2);
ax_3 = subplot(2,2,3);
ax_4 = subplot(2,2,4);

ax = [ax_1, ax_2, ax_3, ax_4];
c = 'rgbmc';

for i = 1:4
    plot(ax(i), Xaxes, Yaxes(:,i), [c(i) linetype1], 'LineWidth', 1.5);
    hold(ax(i), "on");
    plot(ax(i), XTheory(:,i), YTheory(:,i), ['k' linetype2], 'LineWidth', 0.5);
    errorbar(ax(i), XError, YTheory(:,i), YTheory(:,i)*0.2,"vertical","Color",'k');
    hold(ax(i), "off");

    title(ax(i), titles(i));
    axis(ax(i), "padded");
    grid(ax(i), 'on');
    xlabel(ax(i), 'Rotational Travel (%)');
    ylabel(ax(i), 'VOut to VRef (%)');
    xticks(ax(i), 0:10:100);
    yticks(ax(i), 0:10:100);

    legend(ax(i), "Measured", "Theory", Location="northeast");
end

set(gcf, "Color", 'w')
