clc
clear all
close all

% define x,y:
N = 200;
t = linspace(0,2*pi,N);
x = 3*cos(t);
y = sin(t);
% plot x,y:
plot(x,y);
grid on;
hold on;
axis equal;
% transformation parameters:
x0 = 2;
y0 = 0;
s = 2;
alpha = pi/3;
% calculate matrices:
a = s*cos(alpha);
b = s*sin(alpha);
c = -s*(x0*cos(alpha)+y0*sin(alpha));
d =  s*(x0*sin(alpha)-y0*cos(alpha));
q = [c;d];
A = [a b; -b a];
% perform transformation:
u = [x; y];
qrep = repmat(q,1,N);
v = A*u + qrep;
% plot xnew,ynew:
xnew = v(1,:);
ynew = v(2,:);
plot(xnew,ynew,'r')