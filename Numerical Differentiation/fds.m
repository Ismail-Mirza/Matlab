function dx = fds(x_vector)
%FDS Summary of this function goes here
%   Detailed explanation goes here
    dx =[];
    disp(length(x_vector))
    for i=1:length(x_vector)-1
        
        dx(i) = x_vector(i+1)-x_vector(i);
    end

end

