clc, clear, close all;

x = linspace(-10, 10, 100);
y = linspace(-10, 10, 100);

[x, y] = meshgrid(x, y);

z = 3*sin(x) + 2*cos(y);

subplot(2, 1, 1)
surf(x, y, z)
title("Surface Curve")

subplot(2, 1, 2)
contour(x, y, z)
title("Level Curves")