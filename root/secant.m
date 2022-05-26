function [xr,i] = secant(elimit)
x0 = -100;
x1 = 100;
i = 0;
%SECANT Summary of this function goes here
%   Detailed explanation goes here
  while 1
      xr = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
      if abs((xr-x1)/xr) <= elimit
            break
      end
      x0=x1;
      x1=xr;
      i=i+1;
  end
end

