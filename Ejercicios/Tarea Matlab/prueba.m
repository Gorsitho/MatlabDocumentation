function A = prueba(A,izq,der)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
%izq=1;
%der=length(A);

   pivote=A(1,izq); % tomamos primer elemento como pivote
   i=izq; % i realiza la búsqueda de izquierda a derecha
   j=der; % j realiza la búsqueda de derecha a izquierda
 
  while i<j          % mientras no se crucen las búsquedas
     while(A(1,i)<=pivote && i<j); % busca elemento mayor que pivote
     i=i+1;
     end
     while(A(1,j)>pivote);         % busca elemento menor que pivote
         j=j-1;
     end
     if (i<j)                     % si no se han cruzado                      
         aux= A(1,i);                  % los intercambia
         A(1,i)=A(1,j);
         A(1,j)=aux;
     
     end
     
  end
   
   A(1,izq)=A(1,j); % se coloca el pivote en su lugar de forma que tendremos
   A(1,j)=pivote; % los menores a su izquierda y los mayores a su derecha
   if izq<j-1
      prueba(A,izq,j-1)
   end % ordenamos subarray izquierdo
   if j+1 <der
      prueba(A,j+1,der)
   end % ordenamos subarray derecho


end

