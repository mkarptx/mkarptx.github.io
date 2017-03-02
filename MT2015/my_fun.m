function [out1,out2]=my_fun(x,a)
% x - vector
% a - scalar

if a>=0,
    out1 = sin(x) + cos(x);
    out2 = sin(x) - cos(x);
else %a<0
    out1 = zeros(size(x));
    out2 = ones(size(x));
end;