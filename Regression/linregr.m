function [a,r2] = linregr(x,y)
%LINREGR Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
if n ~= length(y)
    disp("Length of x is not  equal to y length");
end
sum_x = sum(x);
sum_y = sum(y);
sum_xy = sum(x*y');
sum_x2 = sum(x.^2);
sum_y2 = sum(y.^2);

r2 = (n*sum_xy-sum_x*sum_y)/(sqrt(n*sum_x2-(sum_x)^2)*sqrt(n*sum_y2-(sum_y)^2));
a(1) = (n*sum_xy-sum_x*sum_y)/(n*sum_x2-sum_x*sum_x);

a(2) = sum_y/n - a(1)*sum_x/n;
%plot graph
xp = linspace(min(x),max(x),2);
yp = a(1)*xp +a(2);
plot(x,y,"o",xp,yp);
hold on;
end

