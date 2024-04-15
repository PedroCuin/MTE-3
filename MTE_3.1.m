clc
clear
close all

Vp = 179.6;
Ip = 1.11;
t = linspace(0, 1/45, 1000); % Gerar 100 pontos entre 0 e 10

vt = Vp * sin(2*pi*60*t);
it = Ip * sin(2*pi*60*t);

figure;

[ax, h1, h2] = plotyy(t, vt, t, it);

% Personalize as cores e estilos das linhas
set(h1, 'Color', 'b', 'LineStyle', '-');
set(h2, 'Color', 'r', 'LineStyle', '-');

% Personalize os rótulos e as unidades dos eixos y
ylabel(ax(1), 'Tensão (V)');
ylabel(ax(2), 'Corrente (A)');

xlabel('Tempo (s)');

grid on;

legend('Tensão', 'Corrente');
title('Formas de Onda de Tensão e Corrente');

