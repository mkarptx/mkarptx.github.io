% plotting the function x(t)=exp(-a*t) for various values of a
% on a single figure with legend
clc;
clear all;
close all;

t = linspace(0,1);
a = [2 3 5 6 7];
ch = 'brkgmcy';

for k=1:length(a) 
    x = exp(-a(k)*t);
    plot(t,x,ch(k))
    hold on;
    strs{k} = ['a=',num2str(a(k))];
end;
legend(strs)
grid on;
xlabel('t')
ylabel('x')
text(0.41,0.46,'\leftarrow slowest')