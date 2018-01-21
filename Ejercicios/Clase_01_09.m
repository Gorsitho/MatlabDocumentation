%1)Crear una matriz aleatorio 5x5
%2) Eliminar la fila 1 de la matriz
%3)Reemplazar el valor de la posicion 2,2 con Pi
%4) Elevar cada elemento de la matriz a la 2 y asignar a B
%5)Extraer la submatriz de la fila 1 a la fila 2 de la columna
% 2 a la 3 y asignar a C
%6) Realizar a cada elemento en C el valor de 5 y asignar a D.

% SOLUCION

%1)
A=fix(rand(5,5)*5+1); % fix: cerca a cero rand(5,5) matriz aleatoria entre 0-1 y *cantidad+comienzo
%2)
A(1,:)=[]; %Borrar primera fila
%3)
A(2,2)=pi; % Reemplazar segun posicion
%4)
B=A.^2; % toda la matriz a la 2 pero gracias al punto, si no seria A*A
%5)
C=A(1:2,2:3); % Copiar segun las indicacion de 1 a 2 y de 2 a 3, tener en cuenta ambas.
C=ones(2,2).*5; % Matriz de unos.
D=C;
%------------------------------------------
%         Profesor
x=-3:0.1:3;
pol=[2 0 0 3]; % Polinomio segun sus coeficientes. 0 segun su exponente
y=polyval(pol,x); % evalua el polinomio (polinomio,valores)
plot(x,y);
%raiz
r=roots(pol); % Raiz.
plot(r,zeros(size(r)),'-');

%derivada
der=polyder(pol); %derivar el polinomio
dy=polyval(der,x);
plot(x,dy)
%-----------------------------------
%Pol= 3x^3+4x^2-5x-10
pol2=[3 4 -5 -10];
x=-3:0.1:3; % valores entre -3 a 3 con escala de 0.1
y=polyval(pol2,x);
plot(x,y);

r2=roots(pol2);
der=polyder(pol2);
maxmin=roots(der);
Ymaxmin=polyval(pol2,maxmin);
plot(x,y);

hold on;
plot(maxmin,Ymaxmin,'ro');

%title('Puntos de inflexion');
der2=polyder(der);
xinf=roots(der2);
yinf=polyval(pol2,xinf);
plot(x,y);
hold on;
plot(maxmin,Ymaxmin,'ro');
plot(xinf,yinf,'go');
hold off;

%-------------------------
%Graficar la linea tangente al punto de inflexión.
pol2=[3 4 -5 -10];
x=-3:0.1:3;
y=polyval(pol2,x);
der=polyder(pol2);
der2=polyder(der);
X0=roots(der2);
Y0=polyval(pol2,X0);
m=polyval(der,X0);
polR= [ m -m*X0+Y0];
YR= polyval(polR,x);
plot(x,y);

hold on;
plot(x,YR);

%--------------------------------------
pol2=[3 4 -5 -10];
x=-3:0.1:3;
y=polyval(pol2,x);
der=polyder(pol2);
der2=polyder(der);
X0=roots(der2);
Y0=polyval(pol2,X0);
m=polyval(der,X0);
polR= [ -1/m +1/m*X0+Y0];
YR= polyval(polR,x);
plot(x,y);

hold on;
plot(x,YR);

%------
help elfun
