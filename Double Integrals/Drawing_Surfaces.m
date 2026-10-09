clc, clear

x = linspace(-10, 10, 100);
y = linspace(-10, 10, 100);

[X, Y] = meshgrid(x, y);

Z = sin(X) + 2*sin(Y);

subplot(2, 1, 1)
surf(X, Y, Z)
title("Surface Curve")

subplot(2, 1, 2)
contour(X, Y, Z)
title("Level Curves")