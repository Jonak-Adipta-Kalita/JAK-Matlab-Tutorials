% Using Lagrange Multiplier Method

clc, clear;

syms x y z lambda

func = 8*x^2 + 4*y*z - 16*z + 600;
constr = 4*x^2 + y^2 + 4*z^2 - 16;

gradFunc = gradient(func);
gradConstr = gradient(constr);

equations = [gradFunc - lambda * gradConstr ; constr];
[xVal, yVal, zVal, lVal] = solve(equations, [x y z lambda]);

crits = [xVal(:), yVal(:), zVal(:)];
[m, n] = size(crits); % "m" are the critical points

for i = 1:m
    vals(i) = subs(func, [x y z], crits(i,:));
    fprintf("Temperature at (%.2f, %.2f, %.2f) is %.2f%cC\n", crits(i,:), vals(i), char(176))
end

[maxTemp, i] = max(vals);
fprintf("\nMaximum Temperature is of %f%cC at (%.2f, %.2f, %.2f)\n", maxTemp, char(176), crits(i,:));
