function area = inscribe(side_sq)
    %calculates the area of a square inscribed by a circle 
    exact = side_sq.^2 - (pi*((side_sq/2).^2));
    area = round(exact, 2);
end