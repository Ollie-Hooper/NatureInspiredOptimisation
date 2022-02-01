p = [-4 2];
[x, y] = drifting_circle(p);
calc_efficiency(x,y);

figure;
plot(x(1, :), y(1, :));
