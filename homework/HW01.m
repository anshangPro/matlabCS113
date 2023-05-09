% HW1
clear all;clc;
%% problem1
sqrt(2)
(3+4)/(5+6)
(5+3)/(5*3)
2^(3^2)
sqrt(2*pi)
2*pi^2
1/sqrt(2*pi)
(2.3*4.5)^(1/3)
(1-2/(3+2))/(1+2/(3-2))
100*(1+0.15/12)^60
(0.0000123+5.678*10^-3)*0.4567*10^-4

%% problem2
a = [2 -1 5 0];
b = [3 2 -1 4];
c = a-b
c = b+a-3
c = b./a
c = b.*a % b.a 
c = a.^b
c = 2.^b+a
c = 2*b/3.*a
c = b*2.*a

%% problem3
A = [20 4 2 6; 6 37 2 3; 8 5 9 9]
x1 = A(1, :)
y = A(size(A, 1)-1:size(A, 1), :)
B = A(:, 2:2:size(A,2))
C = reshape(A, [4, 3])
1 ./ A
A(3, 2) = 100

%% problem4
%input_inch = input('Enter a number: ');
input_inch = 5;
format1 = '%.2f inches is %.2f cm\n';
fprintf(format1, input_inch, input_inch * 2.54);
disp([num2str(input_inch, '%.2f'), ' inches is also ', num2str(input_inch * 2.54 * 10, '%.2f'), ' mm']);

%% problem5
%distance = input("Enter the distance: ");
%gas = input("Enter the liters used: ");
distance = 528;
gas = 46.23;
format_gas = 'Distance\t\tLiters used\t\tkm/L\t\tL/100km\n%-8.d\t\t%-8.2f\t\t%-4.2f\t\t%-7.2f\n';
fprintf(format_gas, distance, gas, distance/gas, (gas / distance * 100));

%% problem6
P(0.15, 50000, 20)

x = linspace(0.5, 20);
plot(x, P(0.15, 50000, x));
xlabel('x');
ylabel('p');
tt = title('P(N)=$$ \frac{rL(1+r/12)^{12N}}{12\{(1+r/12)^{12N}-1\}} $$');
set(tt,'Interpreter','latex');
text(10, P(0.15, 50000, 10), 'Name')


function out = P(r, L, N)
    out = r .* L .* (1 +r/12).^(12.*N) ./ (12 .* ((1 + r/12).^(12.*N) - 1));
end

