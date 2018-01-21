function [ a ] = ordenarVector(a,t)
%Ordena un vector de forma ascendente(0) o de forma descendente(1)
 for i=1:length(a)-1
    for j=1:length(a)-1
        if t==0
            if a(j)>a(j+1)
            tmp=a(j+1);
            a(j+1)=a(j);
            a(j)=tmp;
            end
        else
            if a(j)<a(j+1)
            tmp=a(j+1);
            a(j+1)=a(j);
            a(j)=tmp; 
            end
        end
     end
 end
end



