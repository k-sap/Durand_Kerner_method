function[conv_iter_vec] = convergence_raw(approx_matr, keps)
%finding number of iterations needed to convegerge for all roots
n_row = length(approx_matr(:, 1));
n_col = length(approx_matr(1, :)) - 1;

conv_iter_vec = zeros(n_row, 1);
for i = 1:n_row
    j = 1;
    while abs(approx_matr(i, j + 1) - approx_matr(i, j)) > keps*eps
        if j == n_col
            break
        end
        conv_iter_vec(i) = conv_iter_vec(i) + 1;
        j = j + 1;
    end
end
conv_iter_vec = max(conv_iter_vec);
end