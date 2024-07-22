clc;
clear;
close;
% Generate data
x = linspace(0, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);

% Create a figure with multiple plots
figure;

% Plot the first curve in red with a solid line
subplot(2, 1, 1);
plot(x, y1, 'r-', 'LineWidth', 2);
title('Sine Function');

% Plot the second curve in blue with a dashed line
subplot(2, 1, 2);
plot(x, y2, 'b--', 'LineWidth', 2);
title('Cosine Function');
