clc;
actual = 3.53;

ll = input('Enter lower limit ll=');
ul = input('Enter upper limit ul=');
n = input('Enter divisor n=');
if n==1
    i=trapezoidal(ll,ul,n);
elseif n==2
    i=one3rd(ll,ul,n);
elseif n==3
    i =three8th(ll,ul,n);
elseif n>3 && rem(n,2)==0
    i = com_one3rd(ll,ul,n);
elseif n==5
    p = n-3;
    q = 3;
    i = combine(ll,ul,p,q)
else
    p = n-3;
    q = 3;
    i = composite6(ll,ul,p,q);
end
fprintf('The value is %f',i);
frpintf('The eroro is %f',(actual-1)*100/actual);
fun = @(x) 2*x+1/x;
x=linspace(0,1,100);
y = integral(fun,0,@(x) x)
plot(x,y)
function i = composite(ll,ul,p,q)
%COMPOSITE Summary of this function goes here
%   Detailed explanation goes here
n=p+q;
h =(ll-ul)/n;
s1 = 0;
for k=1:p/2
    s1=s1+f(ll+(2*k-2)*h)+4*f(ll+(2*k-1)*h)+f(ll+2*k*h);
end
i1=(1/3)*h*s1;
disp(i1)
s2 = 0;
%starting point d:
d=ll+p*h;
for k=1:q/3
    s2=s2+f(d+h*(3*k-3))+3*f(d+h*(3*k-2))+3*f(d+(3*k-1)*h)+f(d+3*k*h);
end
i2=(3/8)*h*s2;
print(i2)
i = i1+i2;
end
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
function out = com_one3rd(a,b,n)
%COM_ONE Summary of this function goes here
%   Detailed explanation goes here
h = (b-a)/n;
x = zeros(1,n+1);
x(1) = a;
x(n+1) = b;
p = 0;
q = 0;

% Define the x-vector
for i = 2:n
    x(i) = a + (i-1)*h;
end
% The 2 factor terms
for i = 2:(((n+1)/2) - 1 )
    q = q + (f(x(2*i)));
end

% The 4 factor terms
for i = 2:((n+1)/2)
   p = p + (f(x(2*i -1)));
end
out = (h/3)*(f(a) + 2*q + 4*p + f(b));
end

function i = one3rd(ll,ul,n)
%ONE3RD Summary of this function goes here
%   Detailed explanation goes here
h = (ul-ll)/n;
s = 0;
m = n/2;
for k=1:m
    s=s+f(ll+(2*k-2)*h)+4*f(ll+(2*k-1)*h)+f(ll+2*k*h);
end
i=h*s*(1/3);
end
function y = f(x)
%F Summary of this function goes here
%   Detailed explanation goes here
    y = 2*x + (1/x);
end
