x = -5:1:5;
dxdy_numerical=NaN(1,length(x));
i=2;
while(i <length(x)) % i greater than 1 when h = 1 and 2 when h = 2
    dxdy_numerical(i)=cds(x,i);
    i=i+1;

end
disp(dxdy_numerical);