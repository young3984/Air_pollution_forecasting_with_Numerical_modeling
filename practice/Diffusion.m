% A simple example of a diffusion equation
clear; clc; clf
D=0.01; u=3; x=linspace(0,1,100); t=linspace(0,2,100);

filename='diffusion.gif';
figure
for ik=1:100
   plot(x,exp(-4*pi^2*D.*t(ik))*sin(2*pi*(x-u*t(ik))),'LineWidth',3)
   axis([0 1 -1 1])
   grid on
%    pause(0.1)
   frame=getframe(2);
   img=frame2im(frame);
   [imind cm]=rgb2ind(img,256);
        if ik==1
            imwrite(imind,cm,filename,'gif','Loopcount',10);
        else
            imwrite(imind,cm,filename,'gif','WriteMode','append')
        end
%         pause(0.1);
end

