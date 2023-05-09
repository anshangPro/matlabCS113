clear all; close all; clc;
%% p1-a
A = [2, 1; 3, -1];
b = [5; 7];
% rref([A b])
x1 = inv(A) * b
%% p1-b
A = [-8, -5; -2, 7];
b = [4; 10];
x2 = inv(A) * b
%% p1-c
A = [12, -5, 0; ...
     -3, 4, 7;  ...
      6, 2, 3];
b = [11; -3; 22];
x3 = inv(A) * b
%% p1-d
A = [6, -3, 4; 12, 5, -7; -5, 2, 6];
b = [41; -26; 16];
x4 = inv(A) * b

%% p2-a
disp('C = B^-1*(A^-1 * B - A)')
disp('C = B\(A\B - A)')
%% p2-b
A = [7 9;-2 4];
B = [4 -3; 7 6];
C = inv(B) * (inv(A) * B - A)
C = B\(A\B - A)

%% p3-a
A = [-2 1; -2 1];
b = [-5; 3];
% rank(A) == rank([A b])    0
% no sol
x = A\b
rref([A b])
%% p3-b
A = [-2 1; -8 4];
b = [3; 12];
% rank(A) == rank([A b])     1
% inf sol
x = pinv(A) * b
rref([A b])
%% p3-c
A = [-2 1; -2 1];
b = [-5; -5.00001];
% rank(A) == rank([A b])    0
% no sol
x = A\b
rref([A b])
%% p3-d
A = [1 5 -1 6; 2 -1 1 -2; -1 4 -1 3; 3 -7 -2 1];
b = [19; 7; 30; -75];
x = A\b
rref([A b])

%% p4
A = [1 -5 -2; 6 3 1; 7 3 -5];
syms c x y z;
b = [11*c; 13*c; 10*c];

sol = A \ b
during = -10 : 0.1 : 10;
fplot3(sol(1), sol(2), sol(3), [-10 10])

%% p5
disp('未知数为t1 t2 t3 q')
r1 = 0.036 * 10;
r2 = 4.01 * 10;
r3 = 0.408 * 10;
r4 = 0.038 * 10;
A = [...
    1/r1, 0, 0, 1 ;...
    1/r2, -1/r2, 0, -1 ;...
    0, 1/r3, -1/r3, -1 ;...
    0, 0, 1/r4, -1 ;...
    ]
b = [20/r1; 0; 0; -10/r4]

sol = A\b





