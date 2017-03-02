clc;
clear all;
close all;

a = [1 -1];

for k=1:length(a)
    x = linspace(0,2);
    [y1,y2] = my_fun(x,a(k));
    figure;
    plot(x,y1,x,y2)
    title(['a = ',num2str(a(k))])
end;

% inline function vs. regular function
y = @(x) sin(x) + cos(x); %inline
% y(x=1) using inline:
y1 = y(1) 
% y(x=1) using regular function:
y1 = func(1) 