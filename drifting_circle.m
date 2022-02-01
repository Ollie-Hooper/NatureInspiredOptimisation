function [x, y] = drifting_circle(p)

lifespan = 120;
v = 50e-3;
step = 0.01;
r = 1;

t = linspace(0, lifespan, lifespan/step);

direction = randi([0, 360], 1000, 1) * (pi/180);

x = p(1) + r*cos(t) + v*cos(direction)*t;
y = p(2) + r*sin(t) + v*sin(direction)*t;

end
