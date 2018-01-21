function ganadores = demora( a )
%Sergio Daniel Velasquez
%Funcion que da como resultado la tardanza en la que sale cada numero,
%teniendo en cuenta el sorteo en el que se da. Solo se puede ganar una vez
%por sorteo.
m=a(1);
for i=1:length(a)-1
   if (a(i)>m)
       m=a(i);
   end
end

ganadores=[1;2;3;4];

 n=4;
 for i=1:n
  sorteo=fix(rand(6)*m+1);
    for j=1:length(sorteo)
      for k=1:length(a)
         
        switch i
            case 1
                 if sorteo(j)==a(k)
                 ganadores(1,j)=a(k);
                 end
            case 2
                 if sorteo(j)==a(k)
                 ganadores(2,j)=a(k);
                 end
            case 3
                 if sorteo(j)==a(k)
                 ganadores(3,j)=a(k);
                 end
            case 4
                 if sorteo(j)==a(k)
                 ganadores(4,j)=a(k);
                 end
            otherwise
                disp('other value')
         end
  
      end
    end
 end
 
 
end

