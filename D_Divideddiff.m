% Newton Divided Difference Interpolation

clc
clear all

x = [5,6,9,11];
y = [12,13,14,16];
p = input('Enter the number: ');
n = length(x);
for i = 1 : n
    d(i,1) = y(i);
end
for j =2 : n
    for i = j : n
        d(i,j) = (d(i,j-1) - d(i-1,j-1))/(x(i) - x(i-j+1));
    end
end
disp(d);
prod = 1;
sum = d(1,1);
for i = 1 : n-1
    prod = (prod * (p - x(i)));
    sum = (prod * d(i+1,i+1)) + sum;
end
disp(sum)