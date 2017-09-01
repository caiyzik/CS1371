function hypot = pythag(side_a, side_b)
    %calculates the hypotenuse of the triangle with the sides given as
    %inputs the function
    exact = sqrt(side_a.^2 + side_b.^2);
    hypot = round(exact, 2);
end