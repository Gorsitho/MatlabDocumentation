function a=ordena(a)
%Nombre: Sergio Daniel Velasquez Pobre
%Codigo: 20161146458
%Lee y ordena un vector con la utilizacion del algoritmo "bubble sort". 
 for i=1:length(a)-1
    for j=1:length(a)-1 
        if a(1,j)>a(1,j+1)
            tmp=a(1,j+1);
            a(1,j+1)=a(1,j);
            a(1,j)=tmp;
        end
    end
 end
end

