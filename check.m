function [results] = check(mult, max_iter, xs)
canon=mult_to_canon(mult);
results=zeros(size(mult));
j=size(canon);
for i=1:j(1)
    x=weierstrass(canon(i,:),max_iter,xs);
    results(i,:)=x(:,end)'-mult(i,:);
end
return
end

