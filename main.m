function[result] = main(coeff, max_iter, keps, xs)
%main function for user
%input: coeff - coefficients of polynomial coeff = [an, a(n-1), ... a1, a0] 
% max_iter - maximum number of iterations
% xs - points to start length(xs) = length(coeff) - 1
%keps - accuracy of precision
%output: result - roots found
if nargin == 1
    max_iter = 50;
    keps = 100;
    xs = nodes(coeff);
end
if nargin == 2
    keps = 100;
    xs = nodes(coeff);
end
if nargin == 3
    xs = nodes(coeff);
end
%SETTINGS
%parameters:
%nodes:

%number of iterations
%max_iter = 25;
%precision keps*eps


%calculate roots matrix, checks convergence
[roots, if_roots] = weierstrass(coeff, max_iter, xs, keps);

%finding last cloumn of roots matrix
len = length(roots(1,:));
roots_concrete = roots(:, len);

%returning that roots from last iteration that are convergent
result = roots_concrete(logical(if_roots));
%result = logical(if_roots);
end