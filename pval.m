function[value] = pval(coeff, x) %polynomial value
% Horner algorithm for polynomial function value at x
% coef = an, a(n-1), ... a1, a0 - coefficients
n = length(coeff);
value = coeff(1);
%for k = (n-1):(-1):1
for k = 2:n
    value = x * value + coeff(k);
end
end
