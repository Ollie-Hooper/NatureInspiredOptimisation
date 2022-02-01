function [x, y] = algorithm(p)


v = 50e-3;

deltaT=1;
direction = randi([0, 360]) * (pi/180);
C_initial=gauss(p(1),p(2));
x = p(1) + v.*deltaT.*cos(direction);
y = p(2) + v.*deltaT.*sin(direction);
for i = 1:100
    mag = sqrt(x.^2+y.^2)
    C_new = gauss(x,y);
    %x
    %y
    %C_initial
    %direction
    deltaC = C_new-C_initial;
    if deltaC>0
        x = x + v.*deltaT.*cos(direction);
        y = y + v.*deltaT.*sin(direction);
        C_initial = C_new;
    else
        random_direction = randi([0, 360]) * (pi/180);
        direction=random_direction;
        x = x + v.*deltaT.*cos(direction);
        y = y + v.*deltaT.*sin(direction);
        C_initial=C_new;
    end

end