clc;
clear all;
close all;

% define matrix:
x = [1 2 3 4 5 6;
     4 5 3 4 5 3;
     6 4 5 4 5 2]
 
y = rand(3,6) %3X6 matrix of random numbers between [0,1]

% multiply:
z=x.*y;

%transpose
x = y'; 

% take from x all values where y>0.5
x = x(y>0.5)

% identity matrix (5X5)
x = eye(5)

% zero matrix, one matrix:
x = zeros(3) %3X3
y = ones(2,4)