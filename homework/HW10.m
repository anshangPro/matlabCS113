clear all; close all; clc;
%% p1
syms x y z a b;
a1 = 3*x^2+7*x*y+4==0;
a2 = a*y+b*x==z;
a3 = x-2*y+2*z==0;

s1 = solve(a1, x);
s2 = solve(a2, x);
s3 = solve(a3, x);

s4 = solve(a1, a2, a3 ,x, y, z);

sol1 = subs(s1, [a b], [4 0.3]);
sol2 = subs(s2, [a b], [4 0.3]);
sol3 = subs(s3, [a b], [4 0.3]);
sol4x = subs(s4.x, [a b], [4 0.3]);
sol4y = subs(s4.y, [a b], [4 0.3]);
sol4z = subs(s4.z, [a b], [4 0.3]);

eval(sol4x)
eval(sol4y)
eval(sol4z)

%% p2
eq2 = poly2sym([0.3 0 0 -3 4.1 -5]);
d1 = diff(eq2);
d2 = diff(d1);
i1 = int(eq2);

subplot(2, 2, 1);
ezplot(eq2);
xlim([-4, 4]);
subplot(2, 2, 2);
ezplot(d1);
xlim([-4, 4]);
subplot(2, 2, 3);
ezplot(d2);
xlim([-4, 4]);
subplot(2, 2, 4);
ezplot(i1);
xlim([-4, 4]);

%% p3
syms x(t) y(t) t;
eq1 = diff(x)+5*x+y==exp(1)^t
eq2 = diff(y)-3-3*y==0

sol = dsolve(eq1, eq2, 'x(0)=1', 'y(0)=1')
figure(2)
t = linspace(0, 1.3, 100);
x = matlabFunction(sol.x);
y = matlabFunction(sol.y);
plot3(t, x(t), y(t));
xlabel('t')
ylabel('x')
zlabel('y')

%% P4
figure(3);
val = 10;
while val <20 || val > 100
    %val = input('input a value btw 20 and 100: ');
    val = 20;
end

dir = true;
k = 5;
while true
    if k >= val
        dir = false;
    else 
        plot(fft(eye(k)));
        %axis([-sind(72) sind(720) -1 1]);
        pbaspect([sind(72) 1 1])
        %axis fill;
        axis off;
        pause(.05);
    end
    
    if dir
        k = k+2;
    else
        k = k-2;
    end
    if k < 5 && ~dir
        break;
    end
end

%% p5


