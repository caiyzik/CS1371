function years = compound(A, P, r, n)
    %A = future value of investment
    %P = initial, principal investment
    %r = annual interest rate (decimal)
    %n = number of times the interest is compounded per year 
    %t = number of years the money is invested
    
    %calculates years needed to grow a princial value to a desired value based on the interest rate and amount of times the interest is compounded per year 
    num = log(A./P); %I separated the calculation to make it easier to read
    dom = log(1 + (r./n));
    years = ceil((num./dom)/n);
    
end 