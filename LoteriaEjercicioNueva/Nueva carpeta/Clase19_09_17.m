%-------- Clase 19/09/2017--------

 %----------Sorteo-------------
% Nombre:Sergio Daniel Velasquez Pobre.
% Codigo: 20161146458.
a=importdata('baloto.csv'); % Se importan los datos.
datos=a(:,2:7);
 datos=datos(:);
 h=histograma(datos);
 
 %Grafica de histograma
 subplot(1,2,1)
 hold on
grid on
 bar(h);
 title('Histograma baloto');
 
 %Grafica demora
 datos2=a(:,1:7);
 subplot(1,2,2)
 d=demora(datos2);
 bar(d);
 title('Demora baloto');
 
 

