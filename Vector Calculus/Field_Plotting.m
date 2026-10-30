clc, clear, close all;

x = linspace(-3, 3, 20);
y = linspace(-3, 3, 20);
z = linspace(-3, 3, 20);

[x, y, z] = meshgrid(x, y, z);

iComp = x;
jComp = y;
zComp = 3*ones(size(x)); % coz, the other values are 10x10x10

quiver3(x, y, z, iComp, jComp, zComp) % or, for 2D, use "quiver"