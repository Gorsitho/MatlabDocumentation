%Entrada y salida de datos.

% El texto se almacena como vectores tambien.
x=input('texto');
texto1=('El valor de la variable es: ');
texto2=num2str(x);
texto=[texto1,texto2];
disp(texto);

%----Hacer un programa que pregunte por la cantidad de numeros que desea ingresar, 
%luego pregunte por cada numero y al final devuelva el promedio ------------

disp('Ingrese la cantidad de numeros');
c_num=input('Cantidad de numeros:');
a(c_num);

for i=1:c_num
    
    a(i)=input(['Ingrese el numero ',num2str(i),' :']);
    
    %n=input(['Ingrese el numero ',num2str(i),' :']);
    %promedio=promedio+n/c_num;
    %mean(n); <-- Funcion que calcula el promedio de matlab
end
promedio=mean(a);
mayor=mayornum(a);
menor=menornum(a);

disp('El promedio es de ',num2str(promedio),'el mayor numero es:',num2str(mayor),'el menor numero es:',num2str(menor));
%------------------------------
%Programa que pregunte por el numero del sorteo y devuelva los resultados
%del baloto y revancha 

%Ingrese numero de sorteo :
%Los resultados de baloto son 2 7 :
%Los resultados de revancha son 8 7 :

% El numero del sorteo no existe.
a=importdata('baloto.csv'); % Se importan los datos.
baloto=a(:,2:7);
 datos=datos(:);
 
 revancha=a(:,8:7);
 datos=datos(:);

