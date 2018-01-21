%------------------
%-- 26/09/2017.
%Sergio Daniel Velasquez Pobre
%Codigo: 20161146458

%Script que muestra los datos segun una hoja de excel, da como resultado la
%revancha y los resultados del baloto, segun el numero del sorteo.




while opcion<4 && opcion>0
    opcion=input('Ingrese una de las opciones siguientes');
    disp('--- Menu ---');
disp('1.Cargar los datos');
disp('2.Consultar el sorteo');
disp('3.Salir');

switch opcion
    case 1
       a=importdata('baloto.csv');
    case 2
        num_sorteo=input('ingrese el numero del  sorteo :');

revancha=a(:,8:end);
baloto=a(:,2:7);
sorteo=a(:,1);

for i=1:length(sorteo) %Segun la columna de la hoja.
    
    s=sorteo(i);
    
    if (s==num_sorteo) %Condicion para comprobar el numero del sorteo con los datos de la hoja.
        balot=baloto(i,:); %Segun la fila de la hoja de excel.
        disp([' Los resultados del baloto son los siguientes numeros :',num2str(balot)])
        r=revancha(i,:); %Segun la fila de la hoja de excel.
        disp(['Los resultados de la revancha son los siguientes numeros:',num2str(r)])
    end
    
end

    case 3
        
        break;

    otherwise 
     disp('¡¡¡ Opcion invalida!!!');   
end
    

end
