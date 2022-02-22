function [x, y] = drifting_circle(p, v, d, s, n)
r = 1;

t = linspace(0, d, d/s);

direction = randi([0, 360], n, 1) * (pi/180);

x = p(1) + r*cos(t) + v*cos(direction)*t;
y = p(2) + r*sin(t) + v*sin(direction)*t;

end
