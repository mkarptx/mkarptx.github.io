% solutions of hw problems
clc
clear all
close all

% 1:
a = 2.^(0:10)

% 2:
t = linspace(0,1,250)';
sin6 = sin(2*pi*t*6);
figure
plot(t,sin6)
sin7 = sin(2*pi*t*7);
sins = [sin6 sin7];
figure
plot(t,sins)

% 3:
x=1:10;
kefel = x'*x;
[i,j]=find(kefel>=81)
kefel(kefel<20 | kefel>70)=0;

% 4a:
A = randn(10,5,3);
maximum=max(max(max(abs(A))))
[i,j,k]=find(abs(A)==maximum)
% 4b:
maximum=max(reshape(abs(A),numel(A),1,1))
[i,j,k]=find(abs(A)==maximum)

% 5a:
A=rand(99,1)*2-1;
mean3 = mean([A(1:3:end)  A(2:3:end)  A(3:3:end)])
std3 = std([A(1:3:end)  A(2:3:end)  A(3:3:end)])
% 5b:
A = sort(A);
% 5c:
A = A(end:-1:1);
first_neg_index = find(A<0,1)
A = A(1:first_neg_index-1);
A(end-5:end)

% 6
A = eye(10);
v = (1:10)';
vMat = repmat(v,1,10);
A = A + vMat

% 7:
[N,M]=meshgrid(1:4,1:2);
A = N+M
A1 = A(:,1:2)
A2 = A(:,3:4)
B = A1+A2
[v,e]=eig(B)
b = [1;1];
x = B\b
detB = det(B)
iB = inv(B)
condB = cond(B)
