mult=[2 5;4 6];
xs=[3 5];
max_iter=20;
canon=mult_to_canon(mult)

    


x=-5:.1:5;
p=[1 0 -1]; % polynomial function
plot(x,polyval(p,x))

y=weierstrass(p,max_iter,nodes(p),4);
plot(x,polyval(p,x),y(1,:),polyval(p,y(1,:)))
check(roots(p),30,1)