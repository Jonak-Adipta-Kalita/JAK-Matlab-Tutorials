clc, clear;
close all;

syms x y z
vars = [x y z];

field = [x*y*z, 3*x^2*y, x*z^2-z*y^2];
point = [2, -1, 1];

D = divergence(field);
a = subs(D, vars, point);
fprintf("Divergence of Field at (%d, %d, %d) is %d\n", point, a)

C = curl(field);
b = subs(C, vars, point);
fprintf("Curl of Field at (%d, %d, %d) is (%d)i + (%d)j + (%d)k\n", point, b)

if C == 0
    fprintf("\nVector Field is Conservative\n")
elseif C ~= 0
    fprintf("\nVector Field is Non-Conservative\n")
end