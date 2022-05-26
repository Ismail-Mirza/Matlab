input_data = importdata('data.dat');
output = input_data;
for i=1:length(input_data)
    pressure = input_data(i,1);
    compressibility_factor = input_data(i,2);
    ll= 0.01;
    ul = pressure;
    i_val = mod_one3rd(ll,ul,60,compressibility_factor);
    disp(i_val);
    f = pressure*exp(i_val);
    output(i,3) = f;
end