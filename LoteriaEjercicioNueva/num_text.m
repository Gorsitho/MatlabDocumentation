function [ a ] = num_text( a )
%Nombre: Sergio Daniel Velasquez Pobre.
%Codigo: 20161146458.
%Funcion que reciba un numero 0-1000 y me devuelva el valor en texto.



u=mod(a,10);
d=mod(floor(a/10),10);
c=mod(floor(a/100),10);


unidad='';
decena='';
centena='';


    
if u==1
    unidad=' uno';
elseif u==2    
  unidad=' dos';
elseif u==3 
    unidad=' tres';
elseif u==4 
    unidad=' cuatro';
elseif u==5 
    unidad=' cinco';
elseif u==6 
    unidad=' seis';
elseif u==7 
    unidad=' siete';
elseif u==8 
    unidad=' ocho';
elseif u==9 
    unidad=' nueve';
elseif u==0 
    unidad=' diez';
end


if a>10
    
if d==1
    if u==1
    decena=' once';
    unidad='';
    elseif u==2    
    decena=' doce';
    unidad='';
    elseif u==3 
    decena=' trece';
    unidad='';
    elseif u==4 
    decena=' catorce';
    unidad='';
    elseif u==5 
    decena=' quince';
    unidad='';
    elseif u==6 
    decena=' diez y';
    elseif u==7 
    decena=' diez y';
    elseif u==8 
    decena=' diez y';
    elseif u==9 
    decena=' diez y';
    elseif u==0 
    decena=' diez y';
    else
        decena=' diez';
        unidad='';
    end
    
elseif d==2
     if u==0
          decena=' veinte';
          unidad='';
     else
         decena=' veinti';
    end
   
elseif d==3 
    decena=' treinta';
elseif d==4 
    decena=' cuarenta';
elseif d==5 
    decena=' cincuenta';
elseif d==6 
    decena=' sesenta';
elseif d==7
    decena=' setenta';
elseif d==8
    decena=' ochenta';
elseif d==9 
    decena=' noventa';
elseif d==0 
        centena=' cien';
        decena='';
        unidad='';
end
end

if a>100
 if c==1
    if and(d>0,d<10)
    centena=' ciento';
    else
        centena=' cien';
        decena='';
        unidad='';
    end
 elseif c==2
    centena=' doscientos';
elseif c==3 
    centena=' trescientos';
elseif c==4
    centena=' cuatrocientos';
elseif c==5 
    centena=' quinientos';
elseif c==6 
    centena=' seiscientos';
elseif c==7 
    centena=' setecientos';
elseif c==8 
    centena=' ochocientos';
elseif c==9
    centena=' novecientos';
elseif c==0 
    centena=' mil';
end

end

if a>1000
    a=' Numero incorrecto';
else 
a=([centena,decena,unidad]);
end


end


