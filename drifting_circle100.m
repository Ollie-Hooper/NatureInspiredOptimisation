function drifting_circle100(p)

r = 0.8;
v = 50e-3;
MINARR=[];
t=linspace(0,1.5,1000);
for k=1:100
    x_center=p(1);
    y_center=p(2);
    DISTANCEarr=[];
    xARR=[];
    yARR=[];
    
    X_CENTERarr=[];
    Y_CENTERarr=[];
    DeltaCarr=[];
    directionARR=[];
    xNARR=[];
    direction = randi([0, 360]) * (pi/180);
%direction = distributedNumberGeneration2(x_center, y_center);
    MINvalue=[];
    IndexMINvalue=[];
    x = x_center + r*cos(t); %+ v*cos(direction)*t;
    y = y_center + r*sin(t) ;%+ v*sin(direction)*t;
    mag=sqrt(x_center.^2+y_center.^2);
    DISTANCEarr=[DISTANCEarr mag];
    directionARR=[directionARR direction];
    X_CENTERarr=[X_CENTERarr x_center];
    Y_CENTERarr=[Y_CENTERarr y_center];
    for i=1:80
    
        xN=x_center+r*cos(direction);
        xB=x_center-r*cos(direction);
        xNARR=[xNARR xN];
        yN=y_center+r*sin(direction);
        yB=y_center-r*sin(direction);
        CN=gauss(xN,yN, i*);
        CB=gauss(xB,yB);
        DeltaC=CN-CB;
        DeltaCarr=[DeltaCarr DeltaC];
    
        if CN>CB
        
            directionARR=[directionARR direction];
            x_center=x_center+v*cos(direction)*2*pi;
            y_center=y_center+v*sin(direction)*2*pi;
            x_n=x_center + r*cos(t); %+ v*cos(direction)*t;
            y_n=y_center + r*sin(t) ;%+ v*sin(direction)*t;
            mag=sqrt(x_center.^2+y_center.^2);
            X_CENTERarr=[X_CENTERarr x_center];
            Y_CENTERarr=[Y_CENTERarr y_center];
            DISTANCEarr=[DISTANCEarr mag];
            xARR=[xARR x_n];
            yARR=[yARR y_n];
       % plot(x_n,y_n,'.'); hold on
        %drawnow
        
        else
            direction = randi([0, 360]) * (pi/180);
            %direction = distributedNumberGeneration2(xN, yN);
            directionARR=[directionARR direction];
            x_center=x_center +v*cos(direction)*2*pi;
            y_center=y_center +v*sin(direction)*2*pi;
            x_n=x_center+ r*cos(t); %+ v*cos(direction)*t;
            y_n=y_center+ r*sin(t) ;%+ v*sin(direction)*t;
            mag=sqrt(x_center.^2+y_center.^2);
            %MIN=min(mag);
            X_CENTERarr=[X_CENTERarr x_center];
            Y_CENTERarr=[Y_CENTERarr y_center];
            xARR=[xARR x_n];
            yARR=[yARR y_n];
            DISTANCEarr=[DISTANCEarr mag];
        %plot(x_n,y_n,'.'); hold on
        %drawnow
        end


    %plot(x_n,y_n,'.'); hold on
      
    end
    xNARR;
    yARR;
    DISTANCEarr
    X_CENTERarr;
    Y_CENTERarr;
    DeltaCarr;
    directionARR
    %index = find(DISTANCEarr<=0.2)
    %VALUE=DISTANCEarr(index)
    %MINvalue=[MINvalue VALUE];
    %IndexMINvalue=[IndexMINvalue index];
    MIN=min(DISTANCEarr)
    minimum = min(min(DISTANCEarr));
   
    LOC=find(DISTANCEarr==minimum)
    MINARR=[MINARR MIN];
% xNARR=[];
% xARR=[];
% yARR=[];
% X_CENTERarr=[];
% Y_CENTERarr=[];
% DeltaCarr=[];
% DISTANCEarr=[];
% directionARR=[];
% MINvalue=[];
%      

end

MINARR

success = sum(MINARR < 0.15)
histogram(MINARR,100)

end