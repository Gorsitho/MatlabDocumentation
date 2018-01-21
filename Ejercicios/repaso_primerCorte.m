
%------------------------------
[X,Y] = meshgrid(-3:.125:3);
size(X);
size(Y);
Z = peaks(X,Y);
size(Z)
meshc(X,Y,Z);
axis([-3 3 -3 3 -10 5]);
%----------------------------------
[X,Y] = meshgrid(-3:.125:3);
[Rows, Cols] = size(X);
for r = 1:Rows
    for c = 1:Cols
        Z(r,c) = sin(X(r,c)) + sin(Y(r,c));
    end
end
meshc(X,Y,Z);
%----------------------------------