function result= formula(a,b,h,n)
%FORMULA Summary of this function goes here
%   Detailed explanation goes here
   result=h/3 * (fx(a)+fx(b)+4*sum_odd(a,h,n)+2*sum_even(a,h,n));
end

