clc, clear;

syms x y

f = 3*y^2 - 2*y^3 - 3*x^2 + 6*x*y;

fx = diff(f, x, 1);
fy = diff(f, y, 1);
fxx = diff(fx, x, 1);
fyy = diff(fy, y, 1);
fxy = diff(fx, y, 1);

critEquations = [fx fy];
[xCrits, yCrits] = solve(critEquations, [x y]);

crits = [xCrits(:), yCrits(:)];
[m, n] = size(crits);

hessian = det([fxx fxy ; fxy fyy]);

for i = 1:m
    valF = subs(f, [x y], crits(i, :));
    valD = subs(hessian, [x y], crits(i, :));
    valFxx = subs(fxx, [x y], crits(i, :));

    if valD > 0 && valFxx < 0
        fprintf("Local Maximum at (%.3f, %.3f) of %.3f\n", crits(i, :), valF)
    elseif valD > 0 && valFxx > 0
        fprintf("Local Minimum at (%.3f, %.3f) of %.3f\n", crits(i, :), valF)
    elseif valD < 0
        fprintf("Saddle Point at (%.3f, %.3f) of %.3f\n", crits(i, :), valF)
    end
end