x = -5:1:5;
dxdy_numerical=NaN(1,length(x));
for i = 1:length(x)-2
    dxdy_numerical(i)=fds2(x,i);
end
disp(dxdy_numerical);