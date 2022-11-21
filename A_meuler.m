clc
clear all
f = @(t,y) (-y + 2 * cos(t));

a=0;
b=1;
h=0.2;
n=(b-a)/h
t(1)=0;
y(1)=1;
for i=2:n+1
    t(i)=t(i-1)+h;
    y(i)=y(i-1)+h*f(t(i-1),y(i-1));
    y(i)=y(i-1)+(0.5*h)*(f(t(i-1),y(i-1))+f(t(i),y(i)));
end
disp(y)

