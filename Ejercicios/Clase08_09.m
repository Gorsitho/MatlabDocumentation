

x=linspace(0,2*pi,50);
subplot(2,1,1);
y=sin(x);
w=cos(x);
plot(x,y,'r');
title('sen x y cos x','fontsize',20);
xlabel('Valores de X','fontsize',14);
ylabel('Valores de Y','fontsize',14);
grid on
hold on
plot(x,w,'b')
legend('sen x','cos x')
subplot(2,1,2)
z=tan(x);
plot(x,z,'g'),grid
axis([0 2*pi -30 30])
title('tan x','fontsize',20);
xlabel('Valores de X','fontsize',14);
ylabel('Valores de Y','fontsize',14);

%-----------------

z= fix(rand(4,4)*10+1);
contourf(z,10); % Grafico de contorno de relleno muestra isolineas calculadas segun la matriz
colormap spring %Color segun las estaciones.

t= 0:pi/50:10*pi;
plot3(sin(t),cos(t),t);
grid on
axis square % La convierte cuadrada es decir, limites cuadrados.

[X,Y,Z] = peaks(10);
waterfall(X,Y,Z);

[X,Y] = meshgrid(-3:.125:3);%X matriz formada de filas segun x, Y matriz formada de columnas segun y.
[Rows, Cols] = size(X); % 49 49
for r = 1:Rows
    for c = 1:Cols
        Z(r,c) = sin(X(r,c)) + sin(Y(r,c));
    end
end
waterfall(X,Y,Z) % Efecto de cascada.


%-----------------------
x=-3:0.5:3;
bar(x);
bar(exp(-x.*x)); % Crea una grafica de barra segun los valores dados. y se toma de x.
bar(x,exp(-x.*x),'r');

%---------------------
a=importdata('baloto.csv');
a(:,1)=[];
a=a(:);
hist(a,45) % Histograma grafico ordena A segun el numero de contenedores "45".

%---------------------
x = [-2.9:0.2:2.9];
bar(exp(-x.*x)); 
bar(x, exp(-x.*x),'r')
y = round(rand(5,3)*10);
subplot(2,2,1)
bar(Y,'group')
title 'Group'
subplot(2,2,2) 
bar(Y,'stack')
title 'Stack'
subplot(2,2,3)
barh(Y,'stack')
title 'Stack'
subplot(2,2,4)
bar(Y,1.5)
title 'Width = 1.5'

y = cool(7);
subplot(3,2,1)
bar3(Y,'detached')
title('Detached')
subplot(3,2,2)
bar3(Y,0.25,'detached')
title('Width = 0.25')
subplot(3,2,3)
bar3(Y,'grouped')
title('Grouped')
subplot(3,2,4)
bar3(Y,0.5,'grouped')
title('Width = 0.5')
subplot(3,2,5)
bar3(Y,'stacked')
title('Stacked')
subplot(3,2,6)
bar3(Y,0.3,'stacked')
title('Width = 0.3')
colormap([1 0 0;0 1 0;0 0 1])

%------------------------
%Escala logaritmica bidimensional con escala en el eje x,y,log.
x = 0:1000;
y = log(x);

figure
semilogx(x,y)

%------------------------
x = 0:0.1:2;
y = 0:0.1:2;
[xx, yy] = meshgrid(x,y);
zz = sin(xx.^2+yy.^2);
surf(xx,yy,zz) % Superficie tridimensional,Z datos del color y altura.
xlabel('X axes')
ylabel('Y axes')

