% simulate linear system using Simulink, run from script
clc;
clear all;
close all;

tf = 30; %simulation end time

G = 1; % Gain
sim('model',[0 tf]);
plot(tout,xout)
xlabel('t')
ylabel('x')
title(['Closed loop step response, G=',num2str(G)])

G = 33; % Gain
sim('model',[0 tf]);
figure;
plot(tout,xout,'r')
xlabel('t')
ylabel('x')
title(['Closed loop step response, G=',num2str(G)])
