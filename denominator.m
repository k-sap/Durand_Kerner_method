function[value] = denominator(vector, i)
% ∏(x(k)i − x(k)j) - calculate a value necessary (used) for weierstrass function
n = length(vector);
value = 1;
for j = 1:n
    if j ~= i
        value = value * (vector(i) - vector(j));   
    end

end
end