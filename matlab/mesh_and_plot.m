clc;
clear all;
close all;

x = 0:0.1:2;
y = linspace(0,20,40)

[x,y]=meshgrid(x,y)

z = sin(x).*y + x.^2 + 5*x./(y+1);

figure
surf(x,y,z);
colorbar
% shading interp

figure
c=contour(x,y,z,[2 6 10 11.5],'r');
clabel(c)

figure
[c1,c2]=contour(x,y,z,[2 6 10 11.5],'r');
clabel(c1,c2)

