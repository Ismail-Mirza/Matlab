function sum = sum_odd(a,h,n)
%SUM_ODD Summary of this function goes here
%   Detailed explanation goes here
        sum  = 0;
        for j = 2:2:n-2
              sum=sum+fx(a+j*h);
        
        end

end

