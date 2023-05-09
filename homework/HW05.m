% 周凡卜 12012519 HW5
clear all; close all;clc;

%% P1
fibonacci(8.4)
fibonacci(8)

%% P2
x = linspace(1, 100);
p1 = (3*x.^2-1)./2;
p2 = p(2, x);
hold on;
plot(p1, Marker='|');
plot(p2, Marker='_');
legend('p1', 'p2');

%% P3
i = 0.05;
figure(2)
hold on;
loan(i, 10, 10000);

%% P4
taylor(5)
exp(5)

%% P5
[number, value] = hurricane(141)
hurricane('fgd')

%% P6
figure(3)
hold on;
x = linspace(10^4, 10^8, 10000);
plot(x, friction(x, 20))
plot(x, friction(x, 100))
plot(x, friction(x, 1000))
plot(x, friction(x, 10000))
plot(x, friction(x, 100000))
x2 = linspace(0.5*10^3,2*10^3);
plot(x2, 64./x2)
le = legend('$D/ \varepsilon=20$', '$D/ \varepsilon=100$', '$D/ \varepsilon=1000$', '$D/ \varepsilon=10000$','$D/ \varepsilon=100000$', 'Laminar flow');
le.Location = 'southwest';
le.Interpreter = 'latex';
tt = text(10^7, 10^-1, '周凡卜');
title('Moody''s Diagrm')
grid;

my_f = gca();
%set(gca,'XTick',[10^3,10^4,10^5,10^6,10^7,10^8])
my_f.XAxis.Scale = "log";
my_f.YAxis.Scale = "log";
xlim([0.6*10^3, 10^8])
%set(gca,'XTickLabel',{'10^3','10^4','10^5','10^6','10^7','10^8'})

function out=fibonacci(i)
    if  ~isnumeric(i) || ~isreal(i) || i < 0 || i ~= fix(i)
        disp(["error input", i])
        return;
    end
    if i == 0 || i == 1
        out = 1;
        return;
    else 
        out = fibonacci(i-1) + fibonacci(i-2);
        return;
    end
end

function out=p(n, x)
    if n == 0
        out = ones(size(x));
        return;
    elseif n == 1
        out = x;
        return;
    else
        out = ((2*n-1).*x.*p(n-1, x) - (n-1).*p(n-2, x))./n;
        return;
    end
end

function loan(i, n, p)
    if isnumeric(n) && isreal(n) && n > 0
        plot(n, p*(1+i)^n, Marker='x');
        loan(i, n-1, p);
    end
end

function out=taylor(x, idx)
    if nargin < 2
        disp(nargin);
        idx = 0;
    end
    out = x.^idx/factorial(idx);
    if out < 10e-6
        return;
    else 
        out = out + taylor(x, idx+1);
    end
end

function [number, value]=hurricane(speed)
    if ~isnumeric(speed) || ~isreal(speed)
        disp(['invalid input ', speed])
    elseif speed < 74
        disp("too small")
    elseif speed <= 95
        number = 1;
        value = 4;
    elseif speed <= 110
        number = 2;
        value = 6;
    elseif speed <= 130
        number = 3;
        value = 9;
    elseif speed <= 155
        number = 4;
        value = 13;
    else 
        number = 5;
        value = 18;
    end
end

function out = friction(nr, de)
    out = 0.25./(log(1/3.7/de + 5.74./(nr.^0.9)) ./ log(10)).^2;
end
