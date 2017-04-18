function [B]=boltzman(E,T)
    [m,n]=size(E);
    B=zeros(m,n);
    for i=1:m
        for j=1:n
            B(i,j)=exp(-315775*(E(i,j)+300.1615835)/T);
        end
    end
end