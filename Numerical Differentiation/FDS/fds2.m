function dydx = fds2(x,i)
        dydx = (-3*fx(x(i))+4*fx(x(i+1))-fx(x(i+2)))/(2*(x(i+1)-x(i)));
end

