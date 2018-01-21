function m= mayornum(a)
%Daniel Velasquez  Summary of this function goes here
%  Da el mayor numero de una vector

m=a(1);
for i=1:length(a)-1
   if (a(i)>m)
       m=a(i);
   end
end
end

