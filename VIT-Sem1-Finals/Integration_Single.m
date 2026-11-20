% Question: Given two continuous functions, f(x) & g(x), find the Area enclosed by the 2 Curves

clc, clear, close all;

syms x

f = 3*exp(-x^2/2);
g = x^2/2;

intersects = solve(f == g, x);
b = max(intersects);
a = min(intersects);

% Plot the Graphs to determine upper and lower curves!
hold on;
fplot(f, "r--");
fplot(g, "b-");
plot(double(a), double(subs(f, a)), 'go');
plot(double(b), double(subs(f, b)), 'go');

% So, we now know, f is above g and a & b are the limits
area = int(f - g, x, a, b);
fprintf("The Area of the Curve Enclosed is: %.2f\n", double(area))