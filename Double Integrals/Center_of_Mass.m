clc, clear

syms x y

d = y + 2;

x1 = y^2;
x2 = 2 - y^2;

soln = solve(x1 == x2);

Mass = int(int(d, x, x1, x2), y, min(soln), max(soln));

MomentsX = int(int(x*d, x, x1, x2), y, min(soln), max(soln));
MomentsY = int(int(y*d, x, x1, x2), y, min(soln), max(soln));

COM = [MomentsX / Mass, MomentsY / Mass];
fprintf("COM is: (%s, %s)\n", COM(1), COM(2))