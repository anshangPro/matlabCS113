% HW2
clear all; close all;clc;
%% problem2
A = [0 -1 4; 9 -14 25; -34 49 64];
B = A;
B(B>0) = sqrt(B(B>0));
B(B<0) = B(B<0) + 50;
B

%% problem3
x = linspace(-3,3);
y1 = 2*x+5;
y2 = x.^2-3.*x;
plot(x, y1);
axis([-3,3,-5,20])
hold on;
plot(x, y2);
legend('y1', 'y2');

%% problem4
figure(2);
t = linspace(0, 2*pi);
subplot(1, 2, 1);
y = sin(4.*t).*cos(2.*t);
plot(t, y);
h = legend('$$y^k_{min}=sin(4t)cos(2t)$$');
set(h,'Interpreter','latex','Location','SouthOutside');
subplot(1,2,2);
polarplot(t, y);
text(0, 0, 'name');
