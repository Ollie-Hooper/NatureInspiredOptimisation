function [x, y] = drifting_circle(p)

r = 1;
v = 50e-3;

t = linspace(0, 100, 1000);

direction = randi([0, 360], 1000, 1) * (pi/180);

x = r*cos(t) + v*cos(direction)*t;
y = r*sin(t) + v*sin(direction)*t;

end
