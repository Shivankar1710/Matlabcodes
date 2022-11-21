clc
clear all
syms x
a= [4.63 -1.21 3.22 ; -3.07 5.48 2.11 ; 1.26 3.11 4.57]
b=[2.22; -3.17; 5.11]

t=0.001

n=length(a);
N=10;
i=0;
k=1;
x0=zeros(n,1);
x=zeros(n,1);

while k<N
    for i=1:n
        x(i) = (b(i)-(a(i,1:i-1)*x(1:i-1))-a(i,i+1:n)*x0(i+1:n))/a(i,i)
    end
        if (abs(x-x0))<0.001
            disp(x);
            break;
        else
            k=k+1;
            x0=x;
        end
end



    