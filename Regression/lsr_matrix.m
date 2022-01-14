x = 1:7;
y = [0.5,2.5,2.0,4.0,3.5,6.0,5.5];
n = length(x);
if length(y) ~= n
    error('x and y must be same length');
    return
end

%calculate all component
sum_x = sum(x);
sum_y = sum(y);
sum_x2 = sum(x.^2);
sum_xy =sum(x*y');
%coefficient vector
A = [n,sum_x;sum_x,sum_x2];
C = [sum_y,sum_xy]';
constant = (A^-1 * C)';
xp = linspace(min(x),max(x),2);
yp = constant(2)*xp + constant(1);
plot(x,y,"o",xp,yp);
hold on;
