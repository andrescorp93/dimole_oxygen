function [r]=rate(w,TDM,E2,T)
    hr=1.e-9;
    hphi=pi/18;
    R=2.4e-8:hr:4.e-8;
    a=A(w,TDM);
    bexp=boltzman(E2,T);
    [m,n]=size(TDM);
    S=zeros(m,n);
    for i=1:m
        for j=1:n
            S(i,j)=4*pi*a(i,j)*bexp(i,j)*(R(i).^2);
        end
    end
    k=0;
    for i=1:m-1
        for j=1:n-1
            k=k+S(i,j)*hr*hphi;
        end
    end
    r=4*k/(2*pi);
end