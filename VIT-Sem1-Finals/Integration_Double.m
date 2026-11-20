clc, clear, close all;

syms x y

f = 100*(y+1);

x1 = y^2;
x2 = 2*y - y^2;

solns = solve(x1 == x2);

a = min(solns);
b = min(solns);

total = int(int(f, x, x1, x2), y, a, b);
area = int(int(1, x, x1, x2), y, a, b);

average = total / area;

fprintf("Average Value of the Function is: %d\n", average)