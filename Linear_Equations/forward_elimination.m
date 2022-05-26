function m = forward_elimination(m,n)
%FORWARD_ELIMINATION Summary of this function goes here
%   Detailed explanation goes here
 for k=1:n-1
    for i=k+1:n 
        factor = m(i,k)/m(k,k);
        for j=k:n+1
            m(i,j) = m(i,j) - factor*m(k,j);
        end
    end
 end

end

