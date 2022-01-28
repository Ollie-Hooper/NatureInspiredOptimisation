function [x, y] = straight_line(p)

lifespan = 120;
v = 50e-3;
step = 1;

direction = randi([0, 360], 1000, 1) * (pi/180);
t = linspace(0, lifespan, lifespan/step);
x = p(1) + v.*t.*cos(direction);
y = p(2) + v.*t.*sin(direction);

end

