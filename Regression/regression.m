clear all;
x = 1:7;
y = [0.5,2.5,2.0,4.0,3.5,6.0,5.5];
[a,r2]=linregr(x,y);
disp(a);
disp(r2);