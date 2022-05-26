function sum = sum_even(a,h,n)
%SUM_EVEN Summary of this function goes here
%   Detailed explanation goes here
        sum  = 0;
        for j = 1:2:n-1
              sum=sum+fx(a+j*h);
        
        end
end

