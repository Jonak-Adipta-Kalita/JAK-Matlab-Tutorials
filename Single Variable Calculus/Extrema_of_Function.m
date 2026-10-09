clc, clear;

syms x

f = 1/7*x^7 - (14/5)*x^5 + (49/3)*x^3 - 36*x;

f_1st_deriv = diff(f, x);
f_2nd_deriv = diff(f_1st_deriv, x);

crits = solve(f_1st_deriv);
fprintf("There are %d Critical Points\n\n", length(crits));

fplot(f)
hold on

for i = 1:length(crits)
    a = subs(f_2nd_deriv, crits(i));
    y = subs(f, crits(i));
    msg = "Point of Inflection";
    style = "y^";

    if a < 0
        msg = "Maximum";
        style = "rs";
    elseif a > 0
        msg = "Minimum";
        style = "go";
    end

    fprintf("%s at x=%d of %d\n", msg, crits(i), y);
    plot(crits(i), y, style)
end

grid on