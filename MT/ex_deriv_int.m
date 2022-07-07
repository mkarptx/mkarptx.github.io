% calculate first order derivative and integrate
clc
clear all
close all

% calculate for single N:
N = 1e3;
dt = 2/N;
t = (0:dt:2)';
y = sin(2*pi*t);
% derivate:
dydt = diff(y)/dt;
dydt(N+1) = dydt(N);
% integrate:
yint_trapz = cumtrapz(t,dydt);
yint_Riemann = cumsum(dydt)*dt;
% calc error:
err = norm(y-yint_trapz)/norm(y)
% plots 
plot(t,y,t,dydt,t,yint_trapz,t,yint_Riemann)
xlabel('t')
legend('y','dy/dt','yint(trapz)','yint(Riemann)');
title('y, dy/dt and integration of dy/dt by 2 methods')

% calculate error for various N's:
N = 10:10:500;
for k=1:length(N)
    dt = 2/N(k);
    t = (0:dt:2)';
    y = sin(2*pi*t);
    dydt = diff(y)/dt;
    dydt(N(k)+1) = dydt(N(k));
    yint_trapz = cumtrapz(t,dydt);
    e(k) = norm(y-yint_trapz)/norm(y);   
end;
figure;
semilogy(N,e)
xlabel('N')
ylabel('error')
title('mean error vs. N')