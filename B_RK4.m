clc
clear all
f = @(t,y) (-y + 2 * cos(t));
a=0;
b=1;
h=0.2;
n=(b-a)/h;
t(1)=0;
y(1)=1;
for i=2:n+1
    t(i)=t(i-1)+h;
    k1=h*f(t(i-1),y(i-1));
    k2=h*f(t(i-1)+(0.5*h),y(i-1)+((k1)/(2)));
    k3=h*f(t(i-1)+(0.5*h),y(i-1)+((k2)/(2)));
    k4=h*f(t(i-1)+(0.5*h),y(i-1)+((k3)/(2)));
    y(i)=y(i-1)+ (1/6)*(k1+k4+2*(k2+k3));
end
disp(y)
