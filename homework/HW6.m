%% HW6 12012519 周凡卜
clear all; close all; clc;
%% p1
mat = rand(3,5)
col_max = max(mat)
row_max = max(mat, [], 2)
all_max = max(mat, [], 'all')

col_max2 = [];
for col = mat
    tmp = col(1);
    for val = col'
        if val > tmp
            tmp = val;
        end
    end
    col_max2(end+1) = tmp;
end
col_max2

row_max2 = [];
for row = 1:size(mat, 1)
    tmp = mat(row, 1);
    for col = 1:size(mat, 2)
        if mat(row, col) > tmp
            tmp = mat(row, col);
        end
    end
    row_max2(end+1) = tmp;
end
row_max2

all_max2 = mat(1,1);
for col = mat
    for val = col'
        if val > all_max2
            all_max2 = val;
        end
    end
end
all_max2


%% P2
loan = 10000;
month = 0;
while loan > 300
    if loan > 5000
        loan = loan * 1.02;
    else
        loan = loan * 1.01;
    end
    loan = loan - 300;
    fprintf('left loan: %.2f\n', loan);
    month = month + 1;
end
fprintf('in total %d months\n', month+1);
fprintf('in total paid %.2f\n', 300*month+loan)

%% P3
mysin(pi/2)
sin(pi/2)


%% P4
dis = @(x, y, x2, y2) sqrt((x-x2)^2 + (y-y2)^2);
x = [1 7 8 17 22 27];
y = [28 18 16 2 10 8];
v = [3 7 4 5 2 6];

loc = [0 0];
min_cost = inf;

for a = 0:30
    for b = 0:30
        cost = 0;
        for i = 1:6
            d = dis(a, b, x(i), y(i));
            cost = cost + 0.5 * v(i) * d;
        end
        if cost < min_cost
            loc = [a b];
            min_cost = cost;
        end
    end
end
loc
cost

%% P5
global t1 t2 W L n_times q2 q3;
t1 = 70; t2 = 200; W = 2; L = 2;
q3 = false;
q2 = false;
t = @(x,y) (t2-t1) * w(x, y) + t1;

for n_times = 1 : 19
    t(1,1)
end

q2 = true;
t(1, 1)
q2 = false;

q3 = true;
for x = 0:0.2:L
    for y = 0:0.2:W
        fprintf('t=%f at (%.1f, %.1f)\n',t(x, y), x, y);
    end
end


%% q6
xmin = (-10) + (10-(-10)).*rand;
xrange = 2 + (5-2).*rand;
xmax = xmin + xrange;
numPts = 150;
x = linspace(xmin, xmax, numPts);
x2 = x-0.2*xrange;

Amp = 0.5 + (2-0.5).*rand;
Freq = 0.5 + (1.5-0.5).*rand;
y = Amp*sin(2*pi*Freq*x);
y2 = 2*Amp*cos(2*pi*Freq*x2);

r = 2; c = 2;

subplot(r, c, 1)
p1 = plot(x, y);
text(0,1,'12012519', 'Units', 'normalized', 'VerticalAlignment', 'top')

subplot(r, c, 2)
plot(x2, y2)
text(1,1,'12012519', 'Units', 'normalized', 'HorizontalAlignment', 'right', 'VerticalAlignment', 'top')


subplot(r, c, 3)
plot(-5*rand, 3*rand, 'o')
text(0,0,'12012519', 'Units', 'normalized', 'VerticalAlignment', 'bottom')


subplot(r, c, 4)
plot([5*rand 5*rand], [2*rand 6*rand])
text(1,0,'12012519', 'Units', 'normalized', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right')




function out=w(x, y)
    global W L n_times q2 q3;
    out = 0;
    if q2
        n = -1;
        term = inf;
        while abs(term) > abs(out/100)
            n = n+2;
            term = 2/n*sin(n*pi*x/L)*sinh(n*pi*y/L)/sinh(n*pi*W/L);
            out = out + term;
        end
        if ~q3
            fprintf('the smallest n is %d\n', n)
        end
    else
        for n = 1:2:n_times
            out = out + 2/n*sin(n*pi*x/L)*sinh(n*pi*y/L)/sinh(n*pi*W/L);
        end
    end
    out = 2/pi*out;
end

function out=mysin(x)
    out = 0;
    i = 1;
    term = x;
    while i < 10000 && ~isnan(term)
        out = out + term;
        i = i+1;
        term = (-1)^(i-1) * x^(2*i-1) / factorial(2*i-1);
    end
end

