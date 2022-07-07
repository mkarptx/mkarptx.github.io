clc;
clear all;
close all;

N = 50;
r = linspace(0,10,N);
theta = linspace(0,2*pi,N);

[r,theta]=meshgrid(r,theta);

x = r.*cos(theta);
y = r.*sin(theta);

z = besselj(0,r);

figure
surf(x,y,z)

figure
contour3(x,y,z)
