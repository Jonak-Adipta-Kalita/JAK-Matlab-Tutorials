clc, clear;

syms x
hold on

f = x^2;
g = 2*x + 3;

solutions = solve(f==g);
lower = min(solutions);
higher = max(solutions);

fplot(f, x)
fplot(g, x)

area = int(g-f, x, lower, higher);

fprintf("The Area under the Curve is %1.3f sq. units\n", area)