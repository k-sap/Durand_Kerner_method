function[if_roots] = convergence(approx_matr, keps)
%finds whether the approximated roots are convergent
    function[x] = row_conv(row)
        n = length(row);
        if row(n) - row(n-1) < 1*keps*eps
            x = 1;
        else 
            x = 0;
        end
    end
if_roots = length(approx_matr(:, 1));
for i = 1:if_roots
    if_roots(i) = row_conv(approx_matr(i, :));
end

end
