function dfdx = bds(x,i)
%BDS Summary of this function goes here
%   Detailed explanation goes here
dfdx=(f(x(i))-f(x(i-1)))/(x(i)-x(i-1));
end

