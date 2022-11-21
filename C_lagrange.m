%Lagrange Interpolation

clc
clear all
x=[0;1;3];
f=[1;3;55];
n=length(x);
p=input('Point where to find:')

for i=1:n
    l(i)=1;
    for j=1:n
        if j~=i
            l(i)=((p-x(j)) * l(i))/(x(i)-x(j));
        end
    end
end
sum=0;


for i=1:n
    sum=sum+(l(i) * f(i));
end
disp(sum)


