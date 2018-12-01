function [argstart] = nodes(coeff)
    j=size(coeff);
    argstart=zeros(j(1),j(2)-1);
    for i=1:j(1)
    x=sum(abs(coeff(i,:)))+1;
    argstart(i,:)=linspace(complex(x*-1,x*-1),complex(x,x),j(2)-1);
    end
    
end

