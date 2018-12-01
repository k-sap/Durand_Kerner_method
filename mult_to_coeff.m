function [coeff] = mult_to_coeff(mult)
j=size(mult);
coeff=zeros([j(1),j(2)+1]);
for i=1:j(1)
   coeff(i,:)=poly(mult(i,:)); 
end
return
end

