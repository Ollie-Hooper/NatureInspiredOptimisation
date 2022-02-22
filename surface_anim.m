function surface_anim()

fps = 30;
d = 10;

X = linspace(-5, 5);
Y = linspace(-5, 5);
T = linspace(0, d, d*fps);

for t = T
    z = gauss(X, Y, t);
    surf(X,Y,z);
    shading interp
    zlim([0 10]);
    drawnow
    pause(1/fps)


end

