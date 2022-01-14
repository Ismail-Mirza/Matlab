x = -5:1:5;
%define the function 
fx = x.^3 -2*x.^2 -x+3;
dydx_num  = fds(fx)./fds(x);
%exact_differential
dydx_exact = 3*x.^2-4*x-1
%plot function 
plot(x,[dydx_num,NaN],x,dydx_exact);
title('dy/dx');
legend("Numerical Differenetiation","Analytical Differentiation");



