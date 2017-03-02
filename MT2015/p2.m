clc
clear all
close all

dt = 0.05;
t = (0:dt:2)';
y = sin(2*pi*t);
plot(t,y);
hold on;
xlabel('t');
ylabel('y, dy/dt')

% dy/dt - first option:
dydt1 = gradient(y)/dt;
% dy/dt - second option:
dydt = diff(y)./diff(t);
dydt(length(t)) = dydt(end); % duplicate last term dy/dt
plot(t,dydt,t,dydt1)

% integrate:
ynew = cumtrapz(t,dydt);
plot(t,ynew,'r')

err1 = mean(ynew-y)
err2 = mean(abs(ynew-y))
err3 = mean((ynew-y).^2)
