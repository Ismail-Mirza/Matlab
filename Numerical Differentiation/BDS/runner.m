x = -5:1:5;
dxdy_numerical=NaN(1,length(x));
i=length(x);
while(i>2) % i greater than 1 when h = 1 and 2 when h = 2
    dxdy_numerical(i) = bds2(x,i);
    i=i-1;

end
disp(dxdy_numerical);