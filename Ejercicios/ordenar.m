function a=ordenar(a)
%Daniel Velasquez 
%   Ordena un vector 

 for i=1:length(a)-1
    for j=1:length(a)-1 
        if a(j)>a(j+1)
            tmp=a(j+1);
            a(j+1)=a(j);
            a(j)=tmp;
        end
    end
 end

end

