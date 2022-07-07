function qdot=model(t,q)
% contains the right hand side
% called by "second_order_eq.m"

e = 0.5;
qdot = [q(2);
        1 - (1-e*q(1))*q(2) - q(1)];
