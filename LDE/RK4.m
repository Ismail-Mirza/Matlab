n = input('Enter step size n=');
h = 1/n;
y(1) = 100;
t = linspace(0,1,n+1);
for i = 1:n
    k1 =  h*f(t(1),y(i));
    k2 = h*f(t(i)+h/2,y(i)+k1/2);
    k3 = h*f(t(i)+h/2,y(i)+k2/2);
    k4 = h*f(t(i)+h,y(i)+k3);
    y(i+1) = y(i)+(k1+2*k2+3*k3+k4)*(1/6);

end
disp(y);
plot(t,y );
function out = f(t,y)
    out = 100 -0.01*y
end