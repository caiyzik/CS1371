function [fib_num] = fib(n)
    golden = (1+sqrt(5))./2;
    
    fib_unrounded = (golden.^n - (-golden).^-n)./ sqrt(5);
    fib_num = round(fib_unrounded);
end

