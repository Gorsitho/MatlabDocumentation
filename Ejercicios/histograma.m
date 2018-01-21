function h = histograma( a )
%Daniel velasquez
%   realizar un histograma.

h=zeros(1,45);

for i=1:length(a)
  h(a(i))=h(a(i))+1;
  % n=a(i);
   %h(n)=h(n)+1;
end

end

