function [results] = check(mult, max_iter,keps)
canon=mult_to_canon(mult);
results=zeros(size(mult));
j=size(canon);
xs=nodes(canon);
for i=1:j(1)
    x=weierstrass(canon(i,:),max_iter,xs(i,:),keps);
    results(i,:)=abs(sort(x(:,end)')-sort(mult(i,:)));
end
return
end

