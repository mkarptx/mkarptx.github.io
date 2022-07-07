% calculate first two derivatives and plot using plotyy
clc;
clear all;
close all;

dt = 0.01;
t = 0:dt:1;
y = 2*t.*exp(-10*t);
dydt = diff(y)/dt;
dydt(end+1)=dydt(end); %add last value
d2ydt2 = diff(y,2)/dt^2;
d2ydt2(end+(1:2))=d2ydt2(end); %add last value

[hx,h1,h2]=plotyy(t,[y;dydt],t,d2ydt2);
xlabel('Time [sec]')
axes(hx(1));
ylabel('volt, volt/s')
title('y(t) and its derivatives')
legend('y','dy/dt')
axes(hx(2));
ylabel('volt/s^2')

