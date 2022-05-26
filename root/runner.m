xl = input('Enter the lower value,xl=');
xu = input('Enter the higher value,xu=');
elimit = 0.001; 
if f(xl)*f(xu)>0
     disp('No root in the range');
else
    [root,i]=secant(elimit); 
end
fprintf('Root is %f\n',root);
fprintf('Total iteration is %d\n',i);

