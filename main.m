p = [-4 2];
v = 50e-3;
d = 120;
s = 1;
n = 1000;

[x, y] = drifting_circleALGORITHMNew(p);
calc_efficiency(x,y);

figure;
plot(x(1, :), y(1, :));
