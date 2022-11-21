% Bisection Method

%a = input('Enter the first number: ');
%b = input('Enter the second number: ');
f = @(x) (x^3+4*(x)^2-10);
for i=0:1:29
    if(f(i)*f(i+1)<0)
        a=i;
        b=i+1;
        break;
    end
end
disp(a)
disp(b)
if(f(a) * f(b) > 0)
    disp('Wrong Choice')
else
    c = (a + b)/2;
    e = abs(f(c));
    while(e> 10^(-3))
        if(f(a) * f(c) < 0)
            b = c;
        else 
            a = c;
        end
        c = (a + b)/2;
        e = abs(f(c));
    end
end
disp(c);