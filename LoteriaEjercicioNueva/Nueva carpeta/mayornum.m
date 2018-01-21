function m= mayornum(a)
%Daniel Velasquez  Summary of this function goes here
%  Da el mayor numero de una vector
m=a;

for i=1:length(a)-1
   if a(1,i)>a(1,i+1)
       m=a(1,i);
   else
       m=a(1,i+1);
   end
end
end

