function [rt] = rategraph()
    T=90:10:400;
    w=dlmread('dimol_x_en.txt')/1.9732697e-5;
    TDM=1.e-18*dlmread('dimol_x_tdm.txt');
    E2=dlmread('dimol_x_e1.txt');
    l=length(T);
    rt=zeros(l,1);
    k300=rate(w,TDM,E2,300);
    for i=1:l
        rt(i)=rate(w,TDM,E2,T(i))/k300;
    end
    plot(T,rt);
end