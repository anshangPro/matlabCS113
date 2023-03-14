clear all; clc;

%% Problem1
pv = 2:2:8
pv(4) = 33
pv(6) = 11
prac = pv(3:5)
linspace(4,12,3)

%% Problem2
mat = [7:10;12:-2:6]
mat(1, 3)
mat(2, :)
mat(:, 1:2)

%% Problem3
3:6
1.:0.5:3.
5:-1:2

%% Problem4
linspace(4,8,3)
linspace(-3,-15,5)
linspace(9,5,3)

%% Problem5
m = [1:4; 3 11 7 2]
m(2,3)
m(:, 3)
m(4)
size(m)
numel(m)
reshape(m, 1, numel(m))
vec = m(1, :)
vec(2) = 5
vec(3) = []
vec(5) = 8
vec = [vec 11]

%% Problem6
rand(1)
20 * rand(1)
20 + 30*rand(1)
randi([0 10], 1)
randi([0 11], 1)
randi([50 100], 1)

%% Problem7
rows = randi([1,5], 1)
cols = randi([1, 5], 1)
matrix = zeros([rows, cols])

%% Problem8
x = linspace(-pi, pi, 20)
y = sin(x)

%% Problem9
%temperature = input('Enter the temperature: ')
%is_c = input('Is that F or C?: ', "s")
temperature = 5
is_c = 'F'

%% Problem10
x = linspace(0.5, 2.5);
plot(x, exp(x), '');
hold on;
plot(x, log(x));

%% Problem11
figure(2);
v = linspace(0.08, 6);
p = gasP(v);
plot(v, p);
hold on;
p2 = gasP2(v);
plot(v, p2);

function out = gasP(V)
    n = 1;
    T = 300;
    R = 0.08206;
    a = 1.39;
    b = 0.039;
    out = n * R * T./(V-n*b) - n^2*a./V.^2;
end

function out = gasP2(V)
    n = 1;
    T = 300;
    R = 0.08206;
    a = 1.39;
    b = 0.039;
    out = n * R * T./V;
end







