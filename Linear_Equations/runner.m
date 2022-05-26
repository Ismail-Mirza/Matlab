m = [1,2,3,4;7,8,9,5;5,7,8,5];

aug=forward_elimination(m,3);
result = back_sub(aug,3);
disp(result);