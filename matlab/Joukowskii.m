clc
clear all
close all

% Airfoil and AOA:
AOA = 5;% AOA[deg]
sigma = 0.1; % affects thickness (max thickness is ~3*sqrt(3)/4*sigma[%])
delta = 0.1; % affects camber

% define parameters:
alpha = AOA*pi/180; %[rad]
zeta0 = sigma+1i*delta;
b = sqrt((1+sigma)^2+delta^2);
beta = atan(delta/(1+sigma));
gamma = 4*pi*b*sin(alpha+beta);

% generate grid
t = linspace(0,2*pi,100);
bs = linspace(b,5,50);
[t,bs]=meshgrid(t,bs);

% calc velocity:
zeta = zeta0 + bs.*exp(1i*t);
z = zeta+1./zeta;
w = -exp(1i*alpha)*(zeta-zeta0)-exp(-1i*alpha)*b^2./(zeta-zeta0)-1i*gamma./(2*pi).*log(zeta-zeta0);
phi = real(w); % potential
psi = imag(w); % stream-function
dwdzeta = -exp(1i*alpha)+exp(-1i*alpha)*b^2./(zeta-zeta0).^2-1i*gamma./(2*pi*(zeta-zeta0));
dzetadz = zeta.^2./(zeta.^2-1);
dwdz = dwdzeta.*dzetadz;

% get grid, velocity and cp:
x = real(z);
y = imag(z);
u = real(dwdz);
v = -imag(dwdz);
cp = 1-(u.^2+v.^2);

% velocity vectors:
figure;
plot(x(1,:),y(1,:),'k')
hold on;
axis equal;
quiver(x(2:end,:),y(2:end,:),u(2:end,:),v(2:end,:),'b')
axis(2.6*[-1 1 -1 1])
title(['Joukowsky airfoil - velocity map; \alpha=',num2str(AOA),'^o, \sigma=',num2str(sigma),', \delta=',num2str(delta)]);

% pressure map:
figure;
contourf(x,y,cp,-10:.1:10);
shading flat;
axis equal;
axis(2.6*[-1 1 -1 1]);
colorbar;
title(['Joukowsky airfoil - pressure coefficient (c_p); \alpha=',num2str(AOA),'^o, \sigma=',num2str(sigma),', \delta=',num2str(delta)]);

% pressure map:
figure;
plot(x(1,:),y(1,:),'k')
hold on;
axis equal;
contour(x,y,cp,-10:0.1:10,'b');
axis(2.6*[-1 1 -1 1]);
title(['Joukowsky airfoil - pressure coefficient (c_p); \alpha=',num2str(AOA),'^o, \sigma=',num2str(sigma),', \delta=',num2str(delta)]);

figure;
plot(x(1,:),y(1,:),'k')
hold on;
axis equal;
contour(x,y,psi,[-10:0.1:10],'b');
% contour(x,y,phi,[-10:0.1:10],'b');
% plot(x,y,'k')
% plot(x',y','k')
% contour(x,y,psi,[0.038 0.039],'r');
axis(2.6*[-1 1 -1 1]);
title(['Joukowsky airfoil - streamlines; \alpha=',num2str(AOA),'^o, \sigma=',num2str(sigma),', \delta=',num2str(delta)]);
