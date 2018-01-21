%------------------- Ejercicio 1

x=linspace(-2*pi,2*pi,17); %Valores entre -2*pi,2*pi con n=17.
y=sin(x)+cos(x);
plot(x,y,'r--');% x,y,fuente como colores tamaño.

%--------------------- Ejercicio2

fsen_1=linspace(-pi,0,10);
fsen_2=linspace(-pi,pi,10);
fsen_3=linspace(0,pi,10);

y_1=sin(fsen_1);
y_2=sin(fsen_2 -pi/2);
y_3=sin(fsen_3 -pi);

plot(fsen_1,y_1,'-.r*',fsen_2,y_2,'--mo',fsen_3,y_3,':bs') % x,y,fuente como colores tamaño.

%----------------------- Ejercicio3

x=-pi:pi/10:pi;
y=tan(sin(x))-sin(tan(x));
plot(x,y,'--rs','lineWidth',2);
plot(x,y,'--rs','MarkerEdgeColor','k');
plot(x,y,'--rs','MarkerFaceColor','g');
plot(x,y,'--rs','MarkerSize',10);

plot(x,y,'--rs','lineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);

title('Sample plot','fontsize',14);
xlabel('X values','fontsize',14);
ylabel('Y values','fontsize',14);
legend('Y data','X data');
grid on;
text(2,1,'\leftarrow sin(\pi)','fontsize',18);
%------------------------ Ejercicio4

x=linspace(-pi,pi,100);
subplot(2,2,1);
plot(x,sin(x));
subplot(2,2,2);
plot(x,cos(x));
subplot(2,2,3);
plot(x,sinh(x));
subplot(2,2,4);
plot(x,cosh(x));

%--------------------- Ejercicio 5

x=linspace(0,2*pi,5);
subplot(2,1,1);
plot(x,sin(x));
title('Y=sen(x)','fontsize',14);
xlabel('X values','fontsize',14);
ylabel('Y values','fontsize',14);
legend('Y data','X data');
grid on;
subplot(2,1,2);
plot(x,cos(x),'--mo',x,tan(x),':bs');
title('y=cos(x)& y=tan(x)','fontsize',14);
xlabel('X values','fontsize',14);
ylabel('Y values','fontsize',14);
legend('Y data','X data');
grid on;
