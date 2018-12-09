function [coeff] = mult_to_coeff(mult)
%transforms matrix of roots to matrix of coefficients
j=size(mult);
coeff=zeros([j(1),j(2)+1]);
for i=1:j(1)
   coeff(i,:)=poly(mult(i,:)); 
end
return
end

