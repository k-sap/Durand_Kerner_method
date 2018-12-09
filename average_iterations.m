%skrypt testowy tworzacy wykres sredniej liczby iteracji potrzebnej dla
%wielomianu danego stopnia
averages = zeros(1, 10);
keps = 10;
%stopien wielomianu
for j=10:10:100
average = 0;
for i = 1:100
%deg = randi([2, j], 1);
deg = j;
coeff = -25 + 50*rand(1, deg);

iterations = weierstrass(coeff, 250, nodes(coeff), keps);
average = average + convergence_raw(iterations, keps);
end

averages(j/10) = average/100;
end
plot(10:10:100, averages)