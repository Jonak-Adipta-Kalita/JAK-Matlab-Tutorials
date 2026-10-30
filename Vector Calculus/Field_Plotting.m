clc, clear, close all;

x = linspace(-1, 1, 5);
y = linspace(-1, 1, 5);
z = linspace(-1, 1, 5);

[x, y, z] = meshgrid(x, y, z);

iComp = x;
jComp = y .* sin(x);
zComp = 2 * ones(size(x)); % coz, the other values are 10x10x10

quiver3(x, y, z, iComp, jComp, zComp) % or, for 2D, use "quiver"