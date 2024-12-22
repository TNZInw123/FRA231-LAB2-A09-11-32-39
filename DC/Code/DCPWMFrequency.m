figure;
clf('reset');

linetype1 = '-* ';

sgtitle('PWM Duty Cycle - Current', 'Interpreter','latex');
c = 'rgb';

XF = PWMF.DutyCycle;
YF = [PWMF.("10k"), PWMF.("20k"), PWMF.("40k")];

for i = 1:3
    plot(XF, YF(:,i), [c(i) linetype1], 'LineWidth', 1.5);
    hold("on");
end

legend("10k HZ", "20k HZ", "40k HZ");
set(gcf, "Color", 'w');
