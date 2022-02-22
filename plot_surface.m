function plot_surface(d, z)

X = linspace(-2, 2);
Y = linspace(-2, 3);
Z = z(x, y, 0);
surf(X,Y,Z);
shading interp 
view(2);

end

