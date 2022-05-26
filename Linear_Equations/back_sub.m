function  x = back_sub(m,n)
%BACK_SUB Summary of this function goes here
%   Detailed explanation goes here
x = zeros(n,1);
x(n) = m(n,n+1)/m(n,n);
sum = 0;
for i=n-1:-1:1
    for j=i+1:n
        sum = sum+m(i,j)*x(j);

    end
    x(i) = (1/m(i,i))*(m(i,n+1)-sum);
end

