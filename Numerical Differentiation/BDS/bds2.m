function  dydx = bds2(x,i)
%BDS2 Summary of this function goes here
%   Detailed explanation goes here
 dydx = (3*f(x(i))-4*f(x(i-1))+f(x(i-2)))/(2*(x(i)-x(i-1)));
end

