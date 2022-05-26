function i = trapezoidal(ll,ul,n)
%TRAPEZOIDAL Summary of this function goes here
%   Detailed explanation goes here
h=(ul-ll)/n;
s=0;
for k=1:n
    s=s+f(ll+h*(k-1))+f(ll+h*k);
end
i=h*s*0.5;
end

