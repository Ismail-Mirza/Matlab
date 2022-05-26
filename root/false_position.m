function [xr,i] = false_position(xl,xu,elimit)
%FALSE_POSITION Summary of this function goes here
%   Detailed explanation goes here
x_old=0.0;
for i=1:100
  xr = (xl*f(xu)-xu*f(xl))/(f(xu)-f(xl));
  if f(xl)*f(xr)<0
      xu=xr;
  elseif f(xl)*f(xr)>0
      xl=xr;
  else
      break;
  end
  if abs((xr-x_old)/xr) <= elimit
      break
  end
  x_old = xr;
end
end

