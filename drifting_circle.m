function [x, y] = drifting_circle(x_centre, y_centre, r)

t = linspace(0, 100, 1000);

x = r*cos(t) + 0.1*t;
y = r*sin(t) + 0.2*t;

end
