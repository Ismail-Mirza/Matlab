function [xr,i] = newton_raph(elimit)
%NEWTON_RAPH Summary of this function goes here
%   Detailed explanation goes here
xl = 1.0;
i = 0;
while df(xl)~=0
    xr = xl-f(xl)/df(xl);
    if abs((xr-xl)/xr) <= elimit
        break
    elseif f(xr) == 0
        break
    end
    xl=xr;
    i=i+1;
end

