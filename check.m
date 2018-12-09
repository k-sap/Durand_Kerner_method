function [results] = check(mult, max_iter,keps,nodes)
%checks how close the numerical solutions are to known answers
%mult = matrix of roots, max_iter = maximum number of iterations
%keps = multiplicity of machine epsilon(keps=3 means accuracy is 3 times lower)
%nodes = function which determinates starting points
canon=mult_to_coeff(mult);
results=zeros(size(mult));
j=size(canon);
xs=nodes(canon);
for i=1:j(1)
    x=weierstrass(canon(i,:),max_iter,xs(i,:),keps);
    results(i,:)=abs(sort(x(:,end)')-sort(mult(i,:)));
end
return
end

