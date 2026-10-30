clc, clear;
close all;

syms x y z

field = [x*y*z, 3*x^2*y, x*z^2-z*y^2];
point = [2, -1, 1];

D = divergence(field);

a = subs(D, [x y z], point);
fprintf("Divergence of Field at (%d, %d, %d) is %d\n", point, a)

C = curl(field);
b = subs(C, [x y z], point);
fprintf("Curl of Field at (%d, %d, %d) is (%d)i + (%d)j + (%d)k\n", point, b)
