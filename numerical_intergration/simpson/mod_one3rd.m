function i = mod_one3rd(ll,ul,n,c)
%MOD_ONE3RD Summary of this function goes here
%   Detailed explanation goes here
h = (ul-ll)/n;
s = 0;
m = n/2;
for k=1:m
    s=s+pressure(ll+(2*k-2)*h,c)+4*pressure(ll+(2*k-1)*h,c)+pressure(ll+2*k*h,c);
end
i=h*s*(1/3);
disp(i)
end

