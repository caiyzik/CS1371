function [y] = f(x)
    a = 1.17 * sqrt(1 + x.^0.9));
    b = sin(x.^2 - 4);
    c = 1.5 * exp(x.^2 - g(x));
end 

function [y] = g(x)
    y = x .* abs(x);
end 