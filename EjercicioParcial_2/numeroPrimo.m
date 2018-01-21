function [ n ] = numeroPrimo( n )
% Regresa 0 si no es primo y 1 si lo es.

primo=0;
for i=0:n
    if mod(n,i)==0
        primo=primo+1;
    end
end

if primo~=2;
    n=0;
else
   n=1;
end

end

