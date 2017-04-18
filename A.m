function [M] = A(E,D)
    [m,n]=size(E);
    M=zeros(m,n);
    for i=1:m
        for j=1:n
            M(i,j)=4*(E(i,j).^3)*(D(i,j).^2)/(3*1.054571800e-27);
        end
    end
end
