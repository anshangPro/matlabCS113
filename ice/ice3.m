% ice3
clear all; close all;clc;

%% P1
a = [1 2 3; 4 5 6];
x = 0:30:180;
Table = [x' sin(x*pi/180)']

%% P2
1 + 2*3
4 / 2 * 2
1 + 2/4
1 + 2\4
2*2^3
2*3/3
2^(1+2)/3
1/2e-1

1/(2*3)
2^(2*3)
1.5*10^-4 + 2.5*10^-2

%% P3
a = 0;
for i = 1:1000
    a = a + i^2;
end
a

a = sum((1:1000).^2)

b = 0;
for i = 1:502
    b = b + (-1)^(i+1) /(i*2-1);
end
b
b = sum((-1).^((1:502) + 1) ./ (2.*(1:502)-1))

c = 0;
for i = 1:500
    c = c + 1/((i*2-1)^2 * (i*2+1)^2);
end
c
c = sum(1./(  (1:2:999).^2 .* (3:2:1001).^2)  )

%% P4
x = 3>2
x = 2>3
x = -4<=-3
x = 1<1
x = 2~=2
x = 3==3
x = 0<0.5<1

%% P5
ans = sum(2:2:200)

avg = mean([5 8 0 10 3 8 5 7 9 4])

%% P6
a = 0;
i = 1;
x = 0;
a = a + i;
x = x + i/a;
a = a + i;
x = x + i/a;
a = a + i;
x = x + i/a;
a = a + i;
x = x + i/a;
x

a = 0;
x = 0;
i = 1;
for j = 1:4
    a = a + i;
    x = x + i/a;
end
x

%% P7
%n = input('number of terms?')
n = 4;
s = 0;
for k = 1:n
    s = s + 1/(k^2);
end

disp(sqrt(6 * s));

s = sqrt(6 * sum(1./(1:n).^2))

%% P8
v = [3 1 5];
i = 1;
for j = v
    i = i+1;
    if j == 3
        i = i+2;
        m = i + j;
    end
end

%% P9
R = 5;
C = 10;
L = 4;
%E = input('voltage')
E = 2;
%w = input('frequency')
w = 2;
I = E/sqrt(R^2 + (2 * pi * w * L - 1/(2*pi*w*C))^2)

%% P10
rate = 0.01;
initial = 1000;
for i = 1:12
    initial = initial * (1+rate)
end
initial
initial == 1000 * 1.01^12

%% P11

