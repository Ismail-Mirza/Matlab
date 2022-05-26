function [xr,i] = bisection(xl,xu,elimit)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes her
   xold = 0.0;
   for i=1:100
        xr = (xl+xu)/2;
        if f(xr)*f(xl)> 0
            xl = xr;
        elseif f(xr)*f(xl)<0
            xu = xr;
        else
            break;
        end
        if abs((xr-xold)/xr)<= elimit
            break
        end
        xold=xr;
   end
end

