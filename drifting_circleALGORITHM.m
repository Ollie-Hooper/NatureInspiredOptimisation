function [x, y] = drifting_circle(p)

r = 0.25;
v = 50e-3;
x_center1=p(1)
y_center1=p(2)
t = linspace(0, 100, 1000);
t=linspace(0,2*pi,1000);
direction = randi([0, 360]) * (pi/180)
%direction = randi([0, 360]) * (pi/180)
%direction=0
x = x_center1 + r*cos(t) + v*cos(direction)*t;
y = y_center1 + r*sin(t) + v*sin(direction)*t;
MINarr1=[];
MINarr2=[];
for i=1:20

    xN=x_center1+r*cos(direction)
    xB=x_center1-r*cos(direction)
    yN=y_center1+r*sin(direction)
    yB=y_center1-r*sin(direction)
    CN=gauss(xN,yN)
    CB=gauss(xB,yB)
    if CN>CB
        x_center1=x_center1+50e-3*cos(direction)*6.3
        y_center1=y_center1+50e-3*sin(direction)*6.3
        xn=x_center1 + r*cos(t) + v*cos(direction)*t;
        yn=y_center1 + r*sin(t) + v*sin(direction)*t;
        mag=sqrt(xn.^2+yn.^2);
        MIN=min(mag);
        MINarr1=[MINarr1 MIN];
    %plot(x,y)
    else
        direction = randi([0, 360]) * (pi/180)
        x_center1=x_center1+50e-3*cos(direction)*6.3;
        y_center1=y_center1+50e-3*sin(direction)*6.3;
        xn=x_center1+ r*cos(t) + v*cos(direction)*t;
        yn=y_center1+ r*sin(t) + v*sin(direction)*t;
%     xn=x(end)+ r*cos(t) + v*cos(direction)*t;
%     yn=y(end)+ r*sin(t) + v*sin(direction)*t;
        mag=sqrt(xn.^2+yn.^2);
        MIN=min(mag);
        MINarr2=[MINarr2 MIN];



   end
MINA1
MINA2
end


end