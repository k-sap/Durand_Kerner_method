function [canon] = mult_to_canon(mult)
j=size(mult);
canon=[];
for i=1:j(1)
   x=poly(mult(i,:)); 
   canon=[canon;x];
end
return
end

