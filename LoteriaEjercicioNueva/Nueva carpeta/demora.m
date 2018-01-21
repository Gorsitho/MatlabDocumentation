function h=demora(a)

h=-ones(1,45); % Vector de -1.
fila=size(a,1); % Longitud de fila
lcolum=size(a,2); %Longitud de columna
for k=1:fila
    for m=1:lcolum
        if m~=1
           n=a(k,m);
          if h(n)==-1
                h(n)=k-1;
           end
        end
    end
end
hold on
axis ([0 45 0 30]);
grid on
