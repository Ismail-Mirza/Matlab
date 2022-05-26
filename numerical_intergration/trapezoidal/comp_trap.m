function i = comp_trap(ll,ul,n)
%COMP_TRAP Summary of this function goes here
%   Detailed explanation goes here
h=(ul-ll)/n;
s=0;
for k=1:n-1
    s=s+f(ll+h*k);
end
i = h*.5*(f(ll)+2*s+f(ul));
end

