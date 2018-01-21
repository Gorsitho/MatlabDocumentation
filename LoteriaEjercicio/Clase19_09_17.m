%-------- Clase 19/09/2017--------

 %----------Sorteo-------------

a=importdata('baloto.csv');
datos=a(:,2:7);
 datos=datos(:);
 h=histograma(datos);
 
 subplot(1,2,1)
 bar(h);
 title('Histograma baloto');
 
 subplot(1,2,2)
 d=demora(datos);
 bar(d);
 title('Demora baloto');
 
 

