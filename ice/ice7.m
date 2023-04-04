clear all; close all; clc;
%% p1
x = linspace(-2 * pi, 2 * pi, 100);
subplot(1, 2, 1);
plot(x, sin(x));
subplot(1, 2, 2);
plot(x, cos(x));


%% p2
figure(2);
hold on;
plot(x, sin(x), 'Color', 'red');
plot(x, sin(x), 'Color', 'green');
plot(x, sin(x), 'Color', 'blue');