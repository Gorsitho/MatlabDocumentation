function h=conteo(a)
%a=importdata('baloto.csv');
h=-ones(1,45);
lfila=size(a,1);
lcolum=size(a,2);
for k=1:lfila
    for m=1:lcolum
        if m~=1
           n=a(k,m)
            if h(n)==-1
                h(n)=k-1
           end
        end
    end
end
hold on
axis ([0 45 0 30])
grid on
%h=conteo(a);
%bar(h)