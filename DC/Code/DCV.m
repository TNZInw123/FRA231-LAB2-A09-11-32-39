figure;
clf('reset');

linetype1 = '-* ';
c = 'rgbmc';

sgtitle('12V Brushed DC Motor Duty Cycle Characteristics Graph', 'Interpreter','latex');

plot(PWMTable.X1,PWMTable.Y1, [c(1) linetype1], 'LineWidth', 1.5);
hold("on");
plot(PWMTable.X2,PWMTable.Y2, [c(2) linetype1], 'LineWidth', 1.5);
hold("on");
plot(PWMTable.X3,PWMTable.Y3, [c(3) linetype1], 'LineWidth', 1.5);
hold("on");
plot(PWMTable.X4,PWMTable.Y4, [c(4) linetype1], 'LineWidth', 1.5);
hold("on");
plot(PWMTable.X5,PWMTable.Y5, [c(5) linetype1], 'LineWidth', 1.5);

grid('on');
xlabel('Torque (Nm)');
ylabel('Speed (rad/s)');

legend('2.4V', '4.8V', '7.2V', '9.6V', '12V');

set(gcf, "Color", 'w');
