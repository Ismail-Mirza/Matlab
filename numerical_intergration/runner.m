clear all;
clc;
n=input('Enter number of subintervals>>');
if floor(n) ~= n
    disp('Subinterval can not be floating point or string');
elseif n<=1
    disp('Subinterval can not be less than or equal to 1')
end
%limit 
b=2.2;
a=1;
h=(b-a)/n;
result = formula(a,b,h,n);
fprintf('Integral of fx between %0.2f & %0.2f is %f\n',b,a,result);









   

