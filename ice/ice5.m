% ice5
clear all; close all;clc;

%%
%a = input('input a vector');
a = [5.9 33 11];
i = 1;
for val = a
    fprintf('Element %d is %.1f\n', i, val);
    i = i+1;
end

%%
%n = input('n: ');
n = 5;
%c = input('c: ');
c = 'cc';
for i = 1:n
    disp(c);
end

%%
per2(4)
per2(6)

function out=per2(x)
    persistent per2sum;
    if isempty(per2sum)
        per2sum = 0;
    end
    per2sum = per2sum + x;
    out = per2sum;
end