clc, clear, close all;

% To plot function with Data
x = linspace(0, 2*pi, 100);
subplot(1, 2, 1);
plot(x, sin(x), "r--", LineWidth=2)
hold on
plot(x, cos(x), "b-", LineWidth=2)
hold off
xlabel("x")
ylabel("y")
axis([0 2*pi -1 1])
legend("sin(x)", "cos(x)")
title("With Data")

% To plot function directly
syms X;
subplot(1, 2, 2);
fplot(sin(X), [0 2*pi], "b-", LineWidth=2)
hold on
fplot(cos(X), [0 2*pi], "r--", LineWidth=2)
hold off
xlabel("x")
ylabel("y")
axis([0 2*pi -1 1])
legend("sin(x)", "cos(x)", Location="southwest")
title("With direct Function")