x= linspace(0,2*pi,20) % valores entre 0 a 2*pi partido en 20
subplot(2,1,1) % Subgraficas (filas,columnas,ubicacion)
y=sin(x);
w=cos(x);
plot(x,y,'r'); % x,y,fuente como colores tamaño.
title('sen x y cos x','fontsize',20);
xlabel('Valores de X','fontsize',14);
ylabel('Valores de Y','fontsize',14);
legend('sen x','cos x') %Etiqueta
grid on
hold on % Para mantener actualizando la grafica, no usar al principio

plot(x,w,'b')
legend('sen x','cos x')
subplot(2,1,2)
z=tan(x)
plot(x,z,'g'),grid
axis([0 2*pi -30 30]) % Valores en x de 0 a 2*pi y Y de -30 a 30.
title('tan x','fontsize',20);
xlabel('Valores de X','fontsize',14);
ylabel('Valores de Y','fontsize',14);