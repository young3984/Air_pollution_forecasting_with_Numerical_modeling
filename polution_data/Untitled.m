clear; clc; 

a=load('Hour_01');

x=a(:,2);
y=a(:,3);
pol=a(:,4);

[yy xx]=meshgrid(x,y);
 
scatter(y,x,pol);

% title('Air Polution')