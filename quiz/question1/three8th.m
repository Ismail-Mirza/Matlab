function i = three8th(ll,ul,n)
%THREE8TH Summary of this function goes here
%   Detailed explanation goes here
h=(ul-ll)/n;
m = n/3;
s = 0;
for k=1:m
    s=s+f(ll+h*(3*k-3))+3*f(ll+h*(3*k-2))+3*f(ll+(3*k-1)*h)+f(ll+3*k*h);
end
i = h*(3/8)*s;
end

