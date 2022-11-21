% Gauss Elimination
clc
clear all
A = [10,8,-3,1;2,10,1,-4;3,-4,10,1;2,2,-3,10];
B = [16;9;10;11];
y=[A B]
n = length(A);
 
for j=1:n-1
    for i=j+1:n
        y(i,:)=y(i,:)-((y(i,j))/(y(j,j)))*y(j,:)
    end
end
x(n)=y(n,n+1)/y(n,n)
for i=n-1:-1:n
    sum=0;
    for j=i+1:n
        sum=sum+y(i,j)*x(j)
    end
    x(i)=(y(i,n+1)-sum)/y(i,i)
end
fprintf('x=')
disp(x)


