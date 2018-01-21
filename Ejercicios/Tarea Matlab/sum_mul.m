function [sum,mul] = sum_mul(a,b)
%Nombre: Sergio Daniel Velasquez Pobre
%Codigo: 20161146458
%Lee 2 vectores y devuelve la suma de cada elemento "sum", ademas el producto de
%cada elemento "mul".
%sum=a+b; <-- Opcional, con los operadores de Matlab.
%mul=a.*b; <-- Opcional, con los operadores de Matlab.

%Validacion
if (length(a)~=length(b))
     error('Error, la longitud de los vectores es distinta.(¡Provocado!)')
end
%Operacion
sum=ones(1,length(a)); 
mul=ones(1,length(a));
 for i=1:length(a) 
     sum(1,i)=a(1,i)+b(1,i); %Se suma los vectores.
     mul(1,i)=a(1,i)*b(1,i); %Se multiplican los vectores.
 end
end

