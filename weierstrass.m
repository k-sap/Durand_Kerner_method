function[roots, if_roots] = weierstrass(coeff, max_iter, xs, keps)
% coeff- coefficients of polynomial
% max_iter - maximum number of iterations
% xs - points to start length(xs) = length(coeff) - 1
% dodac sprawdzanie poprawnosci wymiarow
k = 1;
n_poly = length(coeff); % n + 1 (because of a0 element)
n_roots = length(xs);   % n
roots = zeros(n_roots, max_iter + 1);
roots(1:n_roots, 1) = coeff(2:n_poly)';
while k <= max_iter
    for i = 1:n_roots
        roots(i, k+1) = roots(i, k) - pval(coeff, roots(i, k))/denominator(roots(1:n_roots,k), i);
    end
k = k + 1;
end
if_roots = convergence(roots, keps);
end
