function c = polyRegr(x,y)
%POLYREGR Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
if n < length(y)
    disp("System is not solvable");
    return;
end
sum_x = sum(x);
sum_xx = sum(x.^2);
sum_xxx = sum(x.^3);
sum_xxxx = sum(x.^4);
sum_y =sum(y);
sum_xy = sum(x*y');
sum_xxy = sum((x.^2)*y');
a = [n,sum_x,sum_xx;sum_x,sum_xx,sum_xxx;sum_xx,sum_xxx,sum_xxxx];
b = [sum_y,sum_xy,sum_xxy]';
c = a^-1*b;
xp = 0:0.5:5;
yp =  c(1)+c(2)*xp+c(3)*xp.^2;
plot(x,y,"o",xp,yp);
hold on;
end

