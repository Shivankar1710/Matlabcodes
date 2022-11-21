% Trapezoidal rule

clc
clear all
f=@(x)(cos(x))^2
a=input('lower bound:');
b=input('upper bound:');
n=input('interval where to find:');
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+(i*h);
    sum=sum+2*f(x);
end
sum=sum+f(a)+f(b);
X=sum*(h/2);
disp(x)
