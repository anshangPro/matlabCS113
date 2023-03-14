%ice4
clear all; close all;clc;

%% P1
p1(44, 28);
p1(14, 24);

%% P2
a = input('a: '); b = input('b: ');
if a > b
    fprintf('a(%d) is bigger\n', a)
elseif a < b
    fprintf('b(%d) is bigger\n', b)
else 
    fprintf('they are the same value(%d)\n', a)
end



function [] = p1(M, N)
    while M~=N
        if M>N
            M = M-N;
        else
            N = N-M;
        end
    end
    fprintf('%d\n', M);
end