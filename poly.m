function[value] = poly(coeff, x)
% Horner algorithm for polynomial function value at x
% coef = a0, a1, a2, ... a(n-1) - coefficients
n = length(coeff);
value = coeff(n);
for k = (n-1):(-1):1
    value = x * value + coeff(k);
end
end