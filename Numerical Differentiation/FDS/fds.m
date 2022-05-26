function dfdx = fds(x,i)
%FDS Summary of this function goes here
%   Detailed explanation goes here
 dfdx=(fx(x(i+1))-fx(x(i)))/(x(i+1)-x(i));
end

