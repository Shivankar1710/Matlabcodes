% Fixed Point Iteration

y = input('Enter number: ');
g = @(x) (10/x - 4*x)^(1/2);
x = 10;
t = 10^(-3);
i = 1;
while(abs(x-y) > t && i <= 10)
    x = y;
    y = g(x);
    i = i+1;
end
disp(y);