function [sentence] = timeTravel(word, pop, year)
    %first row = years (one reps 1901) x
    %second row = corresponding pop    y
    a = num2str(year); %What if its 1801?
    year = str2num(a(3:4));
    
    %take numerical derivative of the data
    y = pop(2, :);
    x = pop(1, :);
    
    dydx = diff(y)./diff(x);
    %use linear interpolation to determine popularity of the word in the
    %%%given year (so years are the x?)
    val = interp1(pop(1,:), pop(2, :), year);
    %val = round(val, 2);
    
    %interp derivitative 
    diffval = interp1(x(1:end-1), dydx, year);
    %diffval = round(diffval, 2);
    
    if val <= 30
        sentence = sprintf('''%s'' is only a %0.2f, you''ll never blend in!', word, val);
    elseif val > 30
        if diffval < 0
            sentence = sprintf('''%s'' is a %0.2f, you''ll fit right in! But don''t stay too long, it''s starting to decline.', word, val);
        elseif diffval > 0
            sentence = sprintf('You''re in the clear! ''%s'' is a %0.2f and it''s on the rise.', word, val);
        else
            sentence = 'oops';
        end
    else
        sentence = 'oops again';
    end
end