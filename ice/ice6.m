clear all; close all; clc;
%% P1
sumsteps2(11)

%% P2
geomser(1,5)
geomser(2,4)

%% P3
arr = rand(1,6)
max(arr)
min(arr)
cumsum(arr)
sum(arr)

%% P4
term = 1;
in_all = 0;
while in_all < 1000
    in_all = in_all + term^term;
    term = term + 1;
end
fprintf('in total %d terms\n',term - 2);

%% P5
fprintf('cos=%.4f, mycos=%.4f\n', cos(14), mycos(14))

%% P9
V=9, R=4, C=1;
q = @(t) C*V*(1-exp(-t/R*C));
qt = 0;

for t = 0:0.1:inf
    qt = q(t);
    if qt < 8
        fprintf('q=%f at t %.1f\n', qt, t)
    else
        break
    end
end
%% function

function out = sumsteps2(x)
    out = 0;
    for i = x:-2:1
        out = out + i;
    end
end

function out = geomser(r,n)
    out = 0;
    for i = 0:n
        out = out + r^i;
    end
end

function out = cumsum(arr)
    out = 0;
    for i = arr
        out = out + i;
    end
end

function out = mycos(x)
    out = 0;
    i = 0;
    term = inf;
    while abs(term) > 1e-4 && ~isnan(term)
        term = (-1)^i * x^(2*i) / factorial(2*i);
        out = out + term;
        i = i+1;
    end
end
