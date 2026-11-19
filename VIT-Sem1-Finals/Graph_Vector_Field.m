clc, clear, close all;

x = linspace(-1, 1, 5);
y = linspace(-1, 1, 5);

% 2D Plot
[X, Y] = meshgrid(x, y);
iComp = 2 .* X;
jComp = 2 * ones(size(X));

subplot(1, 2, 1);
quiver(X, Y, iComp, jComp)
title("2D Plot")

% 3D Plot
z = linspace(-1, 1, 5);
[X, Y, Z] = meshgrid(x, y, z);

IComp = X;
JComp = Y .* sin(X);
ZComp = 2 * ones(size(X)); % coz, the other values are 5x5x5

subplot(1, 2, 2)
quiver3(X, Y, Z, IComp, JComp, ZComp)
title("3D Plot")