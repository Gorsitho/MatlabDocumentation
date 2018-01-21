function h=histograma(a)
h=zeros(1,45);
for k=1:length(a)
    %%n=a(k)
    h(a(k))=h(a(k))+1;
end
%a=importdata('baloto.csv');
%datos=a(:,2:7);
%datos=datos(:);
%h=histograma(datos);
%bar(h)

h=-ones(1,45);
lfila=size(a,1);
lcolum=size(a,2);
for k=1:lfila;
    for m=1:lcolum
        if m~=1
           n=a(k,m)
            if h(n)==-1
                h(n)=k-1
           end
        end
    end
end
%c=conteo(a);
%bar(c))
