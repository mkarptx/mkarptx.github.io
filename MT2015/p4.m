clc;
clear all;
close all;

dt = 0.01;
t = 0:dt:1;
y = 2*t.*exp(-10*t);
dydt = diff(y)/dt;
dydt(end+1)=dydt(end); %add last value
d2ydt2 = diff(dydt)/dt;
d2ydt2(end+1)=d2ydt2(end); %add last value

[hx,h1,h2]=plotyy(t,[y;dydt],t,d2ydt2);
xlabel('Time [sec]')
set(get(hx(1),'ylabel'),'string','volt, volt/s')
set(get(hx(2),'ylabel'),'string','volt/s^2')
title('y(t) and its derivatives')