function  i = combine(ll,ul,p,q)
%COMBINE Summary of this function goes here
%   Detailed explanation goes here
n=p+q;
h =(ll-ul)/n;
s1 = 0;
for k=1:p/2
    s1=s1+f(ll+(2*k-2)*h)+4*f(ll+(2*k-1)*h)+f(ll+2*k*h);
end
i1=(1/3)*h*s1;
s2 = 0;
%starting point d:
d=ll+p*h;
for k=1:q/3
    s2=s2+f(d+h*(3*k-3))+3*f(d+h*(3*k-2))+3*f(d+(3*k-1)*h)+f(d+3*k*h);
end
i2=(3/8)*h*s2;
i = i1+i2;
end

