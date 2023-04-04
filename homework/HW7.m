%% HW7 12012519 周凡卜
clear all; close all; clc;
%% p1
concentration = @(c0, t, m) c0 * exp(-30*t/m); 
t = 0:0.1:4;

subplot(2, 1, 1);
plot(t, concentration(85, t, 120*0.4536));
axis([0 4 0 100]);
subplot(2, 1, 2);
plot(t, concentration(85, t, 300*0.4536));
axis([0 4 0 100]);

%% p2
WCF = @(t, v) 35.7+0.6*t-35.7*v.^0.16 + 0.43.*t.*v.^0.16;
figure(2);
t = 0:100;
v = 0:50;
[t, v] = meshgrid(t, v);
plot3(t, v, WCF(t, v));

%% p3
y0 = 0.2;
r = [3.3 3.5 3.5668 3.575 3.5766 3.738 3.8287];
ite_size = 10;
y = zeros(ite_size+1);
y(1) = y0;
k = zeros(ite_size+1);
k(1) = 0;
figure(3);
hold on;
for i = 1:length(r)
    for j = 2:ite_size
        y(j) = r(i) * y(j-1) * (1-y(j-1)); 
        k(j) = j;
    end
    plot(k, y, '*');
end

%% p4
n = 1:1000;
d = [137.51, 137.45, 137.65, 137.92];
dd = @(d) pi * d * n/180;
r = sqrt(n);

figure(4);
subplot(2, 2, 1);
polarplot(dd(d(1)), r, 'o');
subplot(2, 2, 2);
polarplot(dd(d(2)), r, 'o');
subplot(2, 2, 3);
polarplot(dd(d(3)), r, 'o');
subplot(2, 2, 4);
polarplot(dd(d(4)), r, 'o');

% p5
dots = load("dotData.txt");
figure(5);
hold on;
axis off;
for i = 1 : length(dots)
    dot = dots(i, :);
    rectangle('Position', [dot(1) dot(2) dot(3) dot(3)], 'Curvature', [1 1]);
end
text(1,0,'12012519', 'Units', 'normalized', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
axis equal;
