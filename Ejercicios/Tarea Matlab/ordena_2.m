function [Mm,mM] = ordena_2(a)
%Nombre: Sergio Daniel Velasquez Pobre
%Codigo: 20161146458
%Lee y ordena un vector con la utilizacion del algoritmo "bubble sort",ademas 
%devuelve un vector de mayor a menor"Mm" y otro de menor a mayor"mM".

%Asignacion
Mm=a;
mM=a;
%Devuelve un vector de menor a mayor.
 for i=1:length(mM)-1
    for j=1:length(mM)-1 
        if mM(1,j)>mM(1,j+1)
            tmp=mM(1,j+1);
            mM(1,j+1)=mM(1,j);
            mM(1,j)=tmp;
        end
    end
 end
%Devuelve un vector de mayor a menor.
  for i=1:length(Mm)-1
    for j=1:length(Mm)-1 
        if Mm(1,j)<Mm(1,j+1)
            tmp=Mm(1,j+1);
            Mm(1,j+1)=Mm(1,j);
            Mm(1,j)=tmp;
        end
    end
  end
end

