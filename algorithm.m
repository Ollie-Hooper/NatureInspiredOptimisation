function [x_array, y_array] = algorithm(p)


v = 100e-3;
magArray=[];
deltaCarr=[];
x_array = [];
y_array = [];
deltaT=1;
x = p(1);
y = p(2);
direction = distributedNumberGeneration(x, y, @gauss);
% direction = randi([0, 360]) * (pi/180);
C_initial=gauss(p(1),p(2));
x = p(1) + v.*deltaT.*cos(direction);
y = p(2) + v.*deltaT.*sin(direction);
for i = 1:100
    x_array = [x_array, x];
    y_array = [y_array, y];
    mag = sqrt(x.^2+y.^2);
    magArray = [magArray mag]
    C_new = gauss(x,y);
    %x
    %y
    %C_initial
    %direction
    deltaC = C_new-C_initial;
    deltaCarr= [deltaCarr deltaC]
    if deltaC>0
        x = x + v.*deltaT.*cos(direction);
        y = y + v.*deltaT.*sin(direction);
        C_initial = C_new;
    else
        new_direction = distributedNumberGeneration(x, y, @gauss);
        random_direction = randi([0, 360]) * (pi/180);
        direction=new_direction;
        x = x + v.*deltaT.*cos(direction);
        y = y + v.*deltaT.*sin(direction);
        C_initial=C_new;
    end

end