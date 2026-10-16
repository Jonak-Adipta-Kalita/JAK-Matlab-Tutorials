clc, clear

syms x y

f = 100*(y+1);

x1 = y^2;
x2 = 2*y - y^2;

solns = solve(x1 == x2);

a = min(solns);
b = max(solns);

Total = int(int(f, x, x1, x2), y, a, b);
Area = int(int(1, y, x1, x2), y, a, b);

Average = Total / Area;

fprintf("Average value of the function is: %d\n", Average)