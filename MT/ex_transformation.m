% transformation of axes
clc
clear all
close all

% define x,y:
N = 200;
t = linspace(0,2*pi,N);
x = 3*cos(t)+1;
y = sin(t)+2;
plot(x,y); % plot x,y:
grid on;  hold on;  axis equal;
% transformation parameters:
x0 = 2;
y0 = 0;
s = 2;
alpha = pi/3;
% transform:
a = s*cos(alpha);
b = s*sin(alpha);
A = [a b;-b a];
q = [x0;y0];
v = A*[x;y]+repmat(q,1,N);
% plot:
plot(v(1,:),v(2,:),'r')
