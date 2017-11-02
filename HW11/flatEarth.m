function [sentence] = flatEarth(v, t)
    %find highest order
    order = length(v) - 1;
    %find best fit
    coeff = polyfit(t,v,order);
    %find analytical integral
    pow = length(coeff): -1:1;
    newcoeff = coeff./pow;
    newcoeff = [newcoeff 0];
    
    if sum(newcoeff) >= 0 
        %Earth is sphere
        sentence = 'Hmm... It seems the Earth is actually round.';
    elseif sum(newcoeff) < 0
        %Earth is flat
        sentence = 'The Earth is flat! I was right all along!';
    end
end