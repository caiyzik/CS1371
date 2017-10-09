function [win] = blackJack(your_hand, next_five, opp_total)
%find the value of your hand
total_value = sum(your_hand);

for idx = next_five
    %find out if you're 'busted'
    if total_value > 21
        win = false;
    %find out is you've won
    elseif total_value >= opp_total
        win = true;
    %if your hand is less than your opponents add the next card in the deck
    else
        total_value = total_value + idx;
    end
end

end