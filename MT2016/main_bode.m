clc;
clear all;
close all;

w = 0.1:0.01:100;
pnom = [1];
pden = [1 2 0 3];
mybode(pnom,pden,w)