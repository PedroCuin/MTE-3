clc
clear
close all

w = linspace(0, 2000, 600);
Imax = linspace(40, 40, 600);

ra_values = [2, 2, 2];
r1_values = [0, 2, 2];
r2_values = [0, 0, 2];

figure;

hold on; % Manter o gráfico enquanto plota as três curvas

plot(w, Imax, 'r--');
for i = 1:length(r1_values)
    r1 = r1_values(i);
    r2 = r2_values(i);
    ra = ra_values(i);

    Ia = 220./(ra+r1+r2+0.01.*w);

    plot(w, Ia);
end

hold off;

ylabel('Ia [A]');
xlabel('w [rpm]');
grid on;

legend('max', 'posi o3', 'posi o2', 'posi o1');
title('Curvas da Velocidade para diferentes posições');

