clc, clear; close all;

x = linspace(-3, 3, 10);
y = linspace(-3, 3, 10);

[x, y] = meshgrid(x, y);

f1 = sin(sqrt(x.^2 + y.^2));
[g1X, g1Y] = gradient(f1);

f2 = x.^2 + y.^2;
[g2X, g2Y] = gradient(f2);

f3 = (x + y).^2;
[g3X, g3Y] = gradient(f3);

f4 = x.*(x + y);
[g4X, g4Y] = gradient(f4);

subplot(2, 2, 1)
quiver(x,y, g1X,g1Y)

subplot(2, 2, 3)
quiver(x,y, g2X,g2Y)

subplot(2,2,2)
quiver(x,y, g3X, g3Y)

subplot(2,2,4)
quiver(x,y, g4X, g4Y)
