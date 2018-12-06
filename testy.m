mult=[2 5;4 6];
xs=[3 5];
max_iter=20;
coeff=mult_to_coeff(mult)

    


x=-5:.1:5;
p=[1 0 -1]; % polynomial function
plot(x,polyval(p,x));

y=weierstrass(p,max_iter,nodes(p),4);
plot(x,polyval(p,x),y(1,:),polyval(p,y(1,:)))
check(roots(p),30,1,@nodes)

check([1 3 4 2],20,8,@nodes)

check([1 3 4 2 6 7 8],10,8,@nodes)

res=zeros(50,6)
for i=1:50
   res(i,:)=check([1 2 3 4 5 6],i,8,@nodes) 
end

semilogy(1:50,res(:,1),[0 50],[1e-5 1e-5])



