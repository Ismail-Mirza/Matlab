a=[4,1,2;1,3,1;1,2,5];
c=[16;10;12];
n=3;
x =zeros(n,1);
xold = zeros(n,1);
sum = 0;
error =0;
for k=1:10000
     for i=1:n
         xold(i)=x(i);
         for j=1:n
             if j ~= i
                 sum = sum +a(i,j)*x(j);
             end
         end
         x(i) = (c(i)-sum)/a(i,i);
         sum =0;
         error = abs((x(i)-xold(i))/x(i));

     end
     if error<= 0.000000001 
         break;
     end
     error = 0.0;
end
disp(x);
fprintf("Display number of iteration %d\n",k);
