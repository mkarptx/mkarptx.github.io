clc;
clear all;
close all;
% simulation end time:
tf = 20;
% system description:
ydot = @(t,y) [y(2);...
               y(3);
               y(1)*sin(t)];
% initial condition:
y0 = [1;0;0];
% simulate:
[t,y]=ode45(ydot,[0 tf],y0);
% plot output:
plot(t,y)
grid on;
xlabel('t')
ylabel('y')
legend('y_1','y_2','y_3',3)