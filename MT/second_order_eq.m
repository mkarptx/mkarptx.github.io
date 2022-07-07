clc;
clear all;
close all;

% the program solves the equation using ode45:
% x'' + (1-e*x)*x' + x = 0
% we define the vector x=(x1,x2) where x1=x,x2=x'
% and transform the system to the form x' = f(t,x)
% specifically:
% x' = [x2 , - (1-e*x1)*x2 - x1]

e = 0.5;% parameter
tf = 20;% end time
x0 = [0; 1]; %initial conditions on x and x'

% define system
% note that "t" is required as an input even if it's not used
xdot = @(t,x)[x(2);
              -(1-e*x(1))*x(2) - x(1)];
          
xdot(0,x0) %initial value of xdot=[x',x'']

% solve using ode45
[t,x]=ode45(xdot,[0 tf],x0);    

% plot
plot(t,x)
grid on;
xlabel('t');
ylabel('x;xdot')
legend('x','v')