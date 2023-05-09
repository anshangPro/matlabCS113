% HW4
clear all; close all;clc;

%% P1
in1 = [1 2 3; 4 5 6; 7 8 9];
even_index(in1)


%% P2
in2 = [1 2 3 6];
flip_it(in2)


%% P3
in3 = [1 2 3; 4 5 6; 7 8 9];
top_right(in3, 2)


%% P4
in4 = [1 2 3; 4 5 6; 7 8 9];
peri_sum(in4)


%% P5
a = 1; b = 1; c = 3; d = 2; e = -1; f = 3; 
if (b*d-a*e) ~= 0
    x = (b*f-c*e)/(b*d-a*e);
    y = (c*d-a*f)/(b*d-a*e);
    fprintf('x=%.2f, y=%.2f\n', x, y);
elseif c*d-a*f == 0 % inf sol
    disp('infinite solution')
else % no sol
    disp('no solution\n')
end


%% P6
Price = [19 18 22 21 25 19 17 21 27 29];
buy = 0;
receive = 0;
total = 1000;
for p = Price
    if p > 25 && total >= 100
        total = total - 100;
        receive = receive + p * 100;
    elseif p < 20
        total = total +100;
        buy = buy + p * 100;
    end
end
fprintf('the amount spent in buying %d\n', buy);
fprintf('the amount received from sale %d\n', receive);
fprintf('the total number of shares %d\n', total);
fprintf('the net increase in the worth %d\n', Price(end) * total - Price(1) * 1000 + receive - buy)


function out = even_index(M)
    out = M(2:2:end, 2:2:end);
end

function w = flip_it(v)
    w = v(end:-1:1);
end

function out = top_right(N, n)
    out = N(1:n, end+1-n:end);
end

function out = peri_sum(A)
    out = sum(A(1, :)) + sum(A(end, :)) + sum(A(:, 1)) + sum(A(:, end)) - A(1,1) - A(1,end) - A(end,1) - A(end,end);
end
