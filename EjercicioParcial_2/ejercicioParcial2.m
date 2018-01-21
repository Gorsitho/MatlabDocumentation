%------------------------------
% Ejercio de practica para el parcial 2.

% Tener en cuenta:
% * Poco tiempo para el examen.
% * Practicar el ejercicio.
% * Si es posible, a prueba de errores.
% * Repasar temas como: Ordenar vectores, menu, limites, funciones,
%   graficas, derivadas, trigonometricas, histograma, ejercicios vistos,
%   ejercicios de practica.

%-------------------------------------------------------------------------
%1. menu= funcion,limites,graficar funcion,graficar
%derivada,salir,limitesmenu.
%-------------------------------------------------------------------------
 

opcionPrincipal=0;
x=linspace(-2*pi,2*pi,100);
xmin=0;xmax=6;ymin=-10;ymax=10;funcion=sin(x);
while opcionPrincipal~=5
    disp('--- Menu ---');
disp('1.Funcion');
disp('2.Limites');
disp('3.Graficar funcion');
disp('4.Graficar derivada');
disp('5.Salir');
opcionPrincipal=input('Ingrese la opcion deseada: ');
switch opcionPrincipal
    case 1
       funcion=input('Ingrese la funcion : ');
    case 2
        opcionLimite=0;
        while opcionLimite ~= 5
                    disp('--- Limites ---');
        disp('1.Xmin');
        disp('2.Xmax');
        disp('3.Ymin');
        disp('4.Ymax');
        disp('5.Volver');
        opcionLimite=input('Ingrese la opcion deseada: ');
        switch opcionLimite
            case 1
                xmin=input('Ingrese el limite minimo de X: ');
            case 2
                xmax=input('Ingrese el limite maximo de X: ');
            case 3
                ymin=input('Ingrese el limite minimo de Y: ');
            case 4
                ymax=input('Ingrese el limite maximo de Y: ');
            otherwise
                disp('Opcion invalida, escoja una opcion correcta');
        end
        end
    case 3
        
        plot(x,funcion);
        try
        axis([(xmin) (xmax) (ymin) (ymax)]);
        catch
        axis([(0) (6) (-10) (10)]);  
        end
        xlabel('X');
        ylabel('Y');
        grid on
        
    case 4
        derFuncion=polyder(funcion);
        derFuncion(1,100)=0;
        plot(x,derFuncion,'--b');
        try
        axis([(xmin) (xmax) (ymin) (ymax)]);
        catch
        axis([(0) (6) (-10) (10)]);  
        end
        xlabel('X');
        ylabel('Y');
        grid on
        
    case 5
        disp('--- Has salido ---'); 
      otherwise 
      disp('Opcion invalida, escoja una opcion correcta');
end
end
%-------------------------------------------------------------------------
%2. Funcion ordenar vector, ascendente(0),descendente(1).
%-------------------------------------------------------------------------
vector=[2 3 1 5 4];
ordenarVector(vector,1);
%-------------------------------------------------------------------------
%3. Cargar datos, histograma,consultar baloto,consultar revancha.
%-------------------------------------------------------------------------
 opcion=0;
while opcion~=5
    
       disp('--- Menu ---');
disp('1.Cargar los datos');
disp('2.Histograma');
disp('3.Consultar sorteo baloto');
disp('4.Consultar sorteo revancha');
disp('5.Salir');
 opcion=input('Ingrese una de las opciones siguientes');
switch opcion
    case 1
       a=importdata('baloto.csv');
    case 2
        try
        datos=a(:,2:7);
        catch
        a=importdata('baloto.csv');
       datos=a(:,2:7);     
        end
       datos=datos(:);
       h=histograma(datos);
        bar(h);
        title('Histograma baloto');

    case 3
num_sorteo=input('Ingrese el numero del baloto :');

baloto=a(:,2:7);
sorteo=a(:,1);

for i=1:length(sorteo) %Segun la columna de la hoja.   
    s=sorteo(i);
    if (s==num_sorteo) %Condicion para comprobar el numero del sorteo con los datos de la hoja.
        balot=baloto(i,:); %Segun la fila de la hoja de excel.
        disp([' Los resultados del baloto son los siguientes numeros :',num2str(balot)])
    end
end
    case 4
        num_sorteo=input('Ingrese el numero del baloto para ver la revancha :');
        revancha=a(:,8:end);
        sorteo=a(:,1);

for i=1:length(sorteo) %Segun la columna de la hoja.
    
    s=sorteo(i);
    if (s==num_sorteo) %Condicion para comprobar el numero del sorteo con los datos de la hoja.
        r=revancha(i,:); %Segun la fila de la hoja de excel.
        disp(['Los resultados de la revancha son los siguientes numeros:',num2str(r)])
    end   
end
    case 5
       disp('--- Has salido ---'); 
    otherwise 
     disp('¡¡¡ Opcion invalida!!!');   
end
    

end
%-------------------------------------------------------------------------
%4. Numero es primo o no.
%-------------------------------------------------------------------------
if numeroPrimo(5)==1
    disp('El numero es primo');
else
    disp('El numero no es primo');
end
    



