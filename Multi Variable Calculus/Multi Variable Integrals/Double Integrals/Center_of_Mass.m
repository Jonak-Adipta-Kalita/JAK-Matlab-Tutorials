clc, clear

syms x y

d = y + 2;

x1 = y^2;
x2 = 2 - y^2;

soln = solve(x1 == x2);

Mass = int(int(d, x, x1, x2), y, min(soln), max(soln));

MomentsAboutY = int(int(x*d, x, x1, x2), y, min(soln), max(soln));
MomentsAboutX = int(int(y*d, x, x1, x2), y, min(soln), max(soln));

COM = [MomentsAboutY / Mass, MomentsAboutX / Mass];
fprintf("COM is: (%f, %f)\n", double(COM(1)), double(COM(2)))
