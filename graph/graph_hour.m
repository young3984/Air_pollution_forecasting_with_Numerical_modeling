clear;clc;close all;

y=load('Latitude.txt');
x=load('Longitude.txt');
a=load('LSTM_pred.txt');
u=load('Hour_24_inter_u.txt');
v=load('Hour_24_inter_v.txt');
img = imread('map.jpg');

% real=load('Hour_24_inter_p.txt');
% fig=figure;
% mesh(y,x,real);
% ylabel('Latitude');
% xlabel('Longitude');
% axis([126.5 130 34 37.5 0 150])
% title('Real')
% caxis([0 140]);
% colorbar;
% saveas(fig,'Real.jpg')
% return;

% fig=figure;
% m_n=load('z_Hour_23_made');
% mesh(y(2:99,2:99),x(2:99,2:99),m_n(2:99,2:99));
% ylabel('Latitude');
% xlabel('Longitude');
% axis([126.5 130 34 37.5 0 150])
% caxis([0 140]);
% title('Numerical')
% colorbar
% saveas(fig,'Numerical mesh.jpg')
% return;


% fig=figure;
% mesh(y,x,a);
% ylabel('Latitude');
% xlabel('Longitude');
% axis([126.5 130 34 37.5 0 150])
% title('LSTM Prediction')
% caxis([0 140]);
% colorbar;
% saveas(fig,'LSTM.jpg')
% return;

% fig=figure;
% m_n=load('z_Hour_23_made');
% mesh(y(2:99,2:99),x(2:99,2:99),m_n(2:99,2:99));
% ylabel('Latitude');
% xlabel('Longitude');
% axis([126.5 130 34 37.5 0 150])
% caxis([0 140]);
% title('Numerical')
% colorbar
% saveas(fig,'Numerical mesh.jpg')
% return;


fig=figure;
contourf(y,x,a,20)
ylabel('Latitude');
xlabel('Longitude');
colorbar('Ticks',0:10:150);
colormap(flipud(pink))
hold on 
quiver(y,x,v,u,1)
imagesc([126.5 130],[34 37.5], flipud(img));
caxis([0 140]);
alpha(0.25);
title('Contour LSTM')
saveas(fig,'Contour LSTM.jpg')
return

% fig=figure;
% real=load('Hour_24_inter_p.txt');
% contourf(y,x,real,20)
% colorbar('Ticks',0:10:150);
% colormap(flipud(pink))
% ylabel('Latitude');
% xlabel('Longitude');
% hold on 
% quiver(y,x,u,v,1)
% title('Contour Real')
% imagesc([126.5 130], [34 37.5], flipud(img));
% caxis([0 140]);
% alpha(0.25);
% saveas(fig,'Contour Real.jpg')
% return;

% 
% fig=figure;
% m_n=load('z_Hour_23_made');
% contourf(y,x,m_n,20)
% ylabel('Latitude');
% xlabel('Longitude');
% colorbar('Ticks',0:10:150);
% colormap(flipud(pink))
% hold on 
% quiver(y,x,v,u,1)
% imagesc([126.5 130],[34 37.5], flipud(img));
% caxis([0 140]);
% alpha(0.25);
% title('Contour Numerical')
% saveas(fig,'Contour Numerical.jpg')
% return
