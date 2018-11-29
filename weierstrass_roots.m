function[result] = weierstrass_roots(coeff)
%main function for user
%input: coeff - coefficients of polynomial
%output: result - roots found

%parameters:
%xs = nodes(coeff);
xs = [-10, 0, 10];
max_iter = 25;
keps = 100;

%calculate roots matrix, checks convergence
[roots, if_roots] = weierstrass(coeff, max_iter, xs, keps);

%finding last cloumn of roots matrix
len = length(roots(1,:));
roots_concrete = roots(:, len);

%returning that roots from last iteration that are convergent
result = roots_concrete(logical(if_roots));
%result = logical(if_roots);
end