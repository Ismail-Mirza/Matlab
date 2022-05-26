function i= one3rd(ll,ul,n)
%ONE Summary of this function goes here
%   Detailed explanation goes here
h = (ul-ll)/n;
s = 0;
m = n/2;
for k=1:m
    s=s+f(ll+(2*k-2)*h)+4*f(ll+(2*k-1)*h)+f(ll+2*k*h);
end
i=h*s*(1/3);
end

