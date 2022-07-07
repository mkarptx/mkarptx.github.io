% calculate mean of many samples with white noise
% find minimal number of samples to reach maximal
% error of 0.01 from the mean
clc;
clear all;
close all;

load sig;

x0 = mean(x,2);

plot(x)
hold on;
plot(x0,'k--','linewidth',3)

i=1;
while max(abs(mean(x(:,1:i),2)-x0))>0.01
    i=i+1;
end;
disp(['minimal number of samples to reach maximal error of 0.01 from the mean = ',num2str(i)])