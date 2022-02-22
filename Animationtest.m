x = linspace(-5,5,50);
y = x';
z = (1000/sqrt(2*pi).*exp(-(x.^2/2)-(y.^2/2)));
%vw = VideoWriter('animation_point', 'Motion JPEG 2000');
%vw.FrameRate = 60;
%open(vw)
s = surf(x,y,z);
%shading interp
zlim([0 500]);

for t = 1:100
    surf(x,y,z.*exp(-t))
    %shading interp
    zlim([0 500]);
    pause(0.1);
    %v = getframe(gcf);
    %writeVideo(vw, v);
end
%close(vw)
