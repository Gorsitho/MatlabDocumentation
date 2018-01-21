
%------ Ejercicio de practica.
x=linspace(0,pi*2,100);


y=sin(x);
subplot(2,3,1);
plot(x,y);
title('Seno');
axis([0 6 -10 10]);

y=cos(x);
subplot(2,3,2);
plot(x,y);
title('coseno');
axis([0 6 -10 10]);

y=csc(x);
subplot(2,3,3);
plot(x,y);
title('Cosecante');
axis([0 6 -10 10]);

y=sec(x);
subplot(2,3,4);
plot(x,y);
title('Secante');
axis([0 6 -10 10]);

y=cot(x);
subplot(2,3,5);
plot(x,y);
title('Cotangente');
axis([0 6 -10 10]);

y=sinh(x);
subplot(2,3,6);
plot(x,y,'-o','Color',[0.5,0.2,0.9],'LineWidth',0.1);
title('Seno hiperbolico');
xlabel('X');
ylabel('Y');
legend('sinh x')
axis([0 6 -10 10]);

%--------------------------------

vector=floor(rand(1,10)*9+1);
ascendente=vector;
descendente=vector;


for i=1:length(vector)-1;
    for j=1:length(vector)-1;
        
        if ascendente(j)<ascendente(j+1)
        tmp=ascendente(j+1);
        ascendente(j+1)=ascendente(j);
        ascendente(j)=tmp;
        end
         if descendente(j)>descendente(j+1)
        tmp=descendente(j+1);
        descendente(j+1)=descendente(j);
        descendente(j)=tmp;
         end 
       
        
    end
end



