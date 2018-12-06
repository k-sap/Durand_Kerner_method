coeff = [1 -2  10  10];
keps = 100;

iterations = weierstrass(coeff, 100, nodes(coeff), 100);
%n - liczba iteracji do wyswietlenia
n = convergence_raw(iterations, keps);

%os OX
x = [1.25*min(real(nodes(coeff))), 1.25*max(real(nodes(coeff)))];
y = [0 0];
hold on
line(x,y,'Color','red','LineStyle','--')

for i = 1:n
%scatter(real(iterations(:, i)), imag(iterations(:, i)), 8*i, 'filled')
plot(real(iterations(:, i)), imag(iterations(:, i)))
pause(1)
end