function dydx = cds(x,i)
%CDS Summary of this function goes here
%   Detailed explanation goes here
 dydx = (f(x(i+1)) - f(x(i-1)))/(2*(x(i+1)-x(i)));
 
end

