% working with matrices
% rotate and flip the image patient.jpg
clc
clear all
close all

% load patient.jpg:
x=imread('patient.jpg');
% plot:
image(x)
% flip red left->right
x(:,:,1) = x(end:-1:1,:,1);
% flip green top->down
x(:,:,2) = x(:,end:-1:1,2);
% flip blue both directions
x(:,:,3) = x(end:-1:1,end:-1:1,3);
% plot
figure
image(x)