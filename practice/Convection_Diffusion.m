% A simple example of a convection diffusion model
clear; clc; close all;

h=1/64; D=0.001; dt=0.1*h^2;
x=0-0.5*h:h:1+0.5*h; y=0-0.5*h:h:1+0.5*h;
n=size(x',1); c=zeros(n); cxy=zeros(n); u=zeros(n); v=zeros(n);
cc=zeros(n);

for ik=1:n
    for it=1:n
        c(ik,it)=0.5+0.5*tanh((0.01-(x(ik)-0.7)^2-(y(it)-0.5)^2)/0.005);
        u(ik,it)=-y(it)+0.5;
        v(ik,it)=x(ik)-0.5;
    end
end 
% return;

[yy xx] = meshgrid(x(2:n-1),y(2:n-1));
quiver(xx,yy,u(2:n-1,2:n-1),v(2:n-1,2:n-1))
% mesh(c)
% return;

figure

for ik=1:100000
    ik
    c(1,:)=c(2,:); c(n,:)=c(n-1,:);
    c(:,1)=c(:,2); c(:,n)=c(:,n-1);
    
    for iu=2:n-1
        for it=2:n-1
            uc=c(iu+1,it)*u(iu+1,it)-c(iu-1,it)*u(iu-1,it);
            vc=c(iu,it+1)*v(iu,it+1)-c(iu,it-1)*v(iu,it-1);
            c_2=c(iu+1,it)+c(iu-1,it)-4.0*c(iu,it)+c(iu,it+1)+c(iu,it-1);
            cxy(iu,it)=c(iu,it)-dt*(uc+vc)/(2*h)+D*dt*c_2/(h^2);    
        end    
    end   
    
    c=cxy;
    
    if (mod(ik,10000) == 0 || ik==1)
        mesh(x(2:n-1),y(2:n-1),c(2:n-1,2:n-1)');
        axis([0 1 0 1 -0.1 1])
        drawnow;
    end
    
    
end    
