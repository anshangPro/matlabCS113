% HW3
clear all; close all;clc;

%% P1-a
%c = input('Input the Celsius temperature: ');
c = 20;
f = 9*c/5+32;
fprintf('The Fahrenheit temperature is %.2f\n', f)

%% P1-b
%c = input('Input the Celsius temperatures as array[a, b, ...]: ');
c = 20:30;
f = 9*c./5+32;
fprintf('Celsius\tFahrenheit\n')
fprintf('%.2f\t%.2f\n', [c' f']')

%% P2
charge = [200 500 700 1000 1500];
for c = charge
    if c < 0
        disp('how can you generate power?')
        continue
    elseif c <= 500
        res = 0.02*c+5;
    elseif c <= 1000
        res = 15+0.05*(c-500);
    else
        res = 40+0.1*(c-1000);
    end
    fprintf('%.2f units will charge $%.2f.\n', c, res);
end

%% P3
cal_n = @(P, L, r) log(P/(P-r*L/12))/(12 * log(1+r/12));
cal_n(800, 50000, 0.15)
cal_n(658, 50000, 0.15)

%L = input('loan')
L = 50000;
%r = input('interest')
r = 0.15;
for t = 0:0.01:L
    if imag(cal_n(t, L, r)) == 0 && cal_n(t, L, r) > 0
        fprintf('The mimimum payment should be %.2f\n', t);
        break
    end
end



