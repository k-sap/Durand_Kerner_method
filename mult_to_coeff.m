function [coeff] = mult_to_coeff(mult)
j=size(mult);
coeff=zeroes(j);
for i=1:j(1)
   coeff(i,:)=poly(mult(i,:)); 
end
return
end

