clc;
clear all;
close all;

% the program solves the equation using ode45:
% x'' + (1-e*x)*x' + x = 1
% we define the vector q=(q1,q2) where q1=x,q2=x'
% and transform the system to the form q' = f(t,q)
% specifically:
% q' = [q2 , 1 - (1-e*q1)*q2 - q1]

e = 0.1;% parameter
tf = 40;% end time
q0 = [0; 0]; %initial conditions on x and x'

% you can solve by difining the right hand side (f)
% in the function model and using:
% [t,q]=ode45(@(t,q)model(t,q),[0 tf],q0);

% or alternatively:
qdot = @(t,q)[q(2);
              1 - (1-e*q(1))*q(2) - q(1)];
[t,q]=ode45(qdot,[0 tf],q0);    

plot(t,q)
title('blue = x, green = xdot');

