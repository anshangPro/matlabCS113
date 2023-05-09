clear all; close all; clc;

%% q1
r = 2;
l = 1;
root = sqrt(2);

while true
    mid = r/2 + l/2;
    if mid < root
        l = mid;
    else
        r = mid;
    end
    if abs(mid - root) < 0.05
        break;
    end
end
fprintf('sol is %d\n', mid)

%% q2
x = [1 2 3 4 5 6 7 8 9 10];
y = [10 14 16 18 19 20 21 22 23 23];

fun = @(a, x) a(1) + a(2)*log(x);
a = fitnlm(x,y,fun,[0.01;0.01])
a = a.Coefficients.Estimate;
fprintf('f(2.5)=%.2d\n',fun(a, 2.5))
fprintf('f(11)=%.2d\n',fun(a, 11))

%% q3
t = [0, 3.15, 6.2, 10, 18.3, 30.8, 43.8];
c = [0.1039, 0.0896, 0.0776, 0.0639, 0.0353, 0.0207, 0.0101];
fun = @(k, t) 0.1039./(1+k.*t);
out = fitnlm(t, c, fun, 1)
k = out.Coefficients.Estimate

figure(1)
hold on;
plot(t, c)
plot(t, fun(k, t))

%% q4
t = 1:10;
p = [26.1, 27, 28.2, 29, 29.8, 30.6, 31.1, 31.3, 31.0, 30.5];

[p1, S1, mu1] = polyfit(t, p, 1);
[p2, S2, mu2] = polyfit(t, p, 2);
[p3, S3, mu3] = polyfit(t, p, 3);

p1 = polyfit(t, p, 1);
p2 = polyfit(t, p, 2);
p3 = polyfit(t, p, 3);

figure(2)
hold on;
plot(t, p, '.');
t2 = (0:1:11);
plot(t2, polyval(p1, t2));
plot(t2, polyval(p2, t2));
plot(t2, polyval(p3, t2));

fprintf('val of degree1 = %d\n', polyval(p1, 11))
fprintf('val of degree2 = %d\n', polyval(p2, 11))
fprintf('val of degree3 = %d\n', polyval(p3, 11))

resdiual = [S1.normr, S2.normr, S3.normr]

[min, idx] = min(resdiual);
fprintf('p%d fits most, as resdiual min = %d\n', idx, min);

%% p5
theta1 = @(a, t) theta1(0) + a(1)*t^3+a(2)*t^4+a(3)*t^5;
theta2 = @(b, t) theta2(0) + b(1)*t^3+b(2)*t^4+b(3)*t^5;

t = [0, 2];
y1 = [-19 43];
y2 = [44 151];

p1 = polyfit(t, y1, 5);
p2 = polyfit(t, y2, 5);


%function out = theta1(a, x)
%    if x == 0
%        out = -19;
%        return;
%    end
%end
