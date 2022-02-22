function [x, y] = straight_line(p, v, d, s, n)

direction = randi([0, 360], n, 1) * (pi/180);
t = linspace(0, d, d/s);
x = p(1) + v.*t.*cos(direction);
y = p(2) + v.*t.*sin(direction);

end

