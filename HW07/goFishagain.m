function [statement, score] = goFish(player1, player2, deck)
%Notes
%game ends when a player runs out of cards

%get rid of pairs
%initialize players scores
[player1, score_1] = remRepeats(player1);
[player2, score_2] = remRepeats(player2);

orig_hand = true;


while ~isempty(player1) & ~isempty(player2)
    if ~isempty(player1)
        match = find(player2 == player1(1));
    end
    if ~isempty(match)
        %if player does have first card: remove from both hands and add a point
        player1 = [player1(2:end) player1(1) player2(match)];
        player2(match) = [];
    else
    %if player doesn't have first card: take first card from deck and append to end of hand
        player1 = [player1(2:end) deck(1) player1(1)];
        deck(1) = [];
    
    end
    
   [player1, add_score] = remRepeats(player1);
    score_1 = score_1 + add_score;
    %switch players/turns ("exchange" cards and scores)
    a = player1;
    b = player2;
    c = score_1;
    d = score_2;
    player1 = b;
    player2 = a;
    score_1 = d;
    score_2 = c;
    
    orig_hand = ~orig_hand;
    
    %idk how to keep track of which player is which at the end and my
    %scores are currently counted incorrectly
    %something also exceeds matrix dimensions
end
    
    if orig_hand
    %player1 is player1 and player2 is player 2
        if score_1 > score_2
            statement = sprintf('Player 1 won!');
        elseif score_2 > score_1
            statement = sprintf('Player 2 won!');
        else
            statement = sprintf('It''s a tie!');
        end
        score = [score_1 score_2];
    else
    %player 2 is player 1 and player 1 is player 2
        if score_1 > score_2
            statement = sprintf('Player 2 won!');
        elseif score_2 > score_1
            statement = sprintf('Player 1 won!');
        else
            statement = sprintf('It''s a tie!');
        end
        score = [score_2 score_1];
    end

end

function [vec2, count] = remRepeats(vec1)
    %removes the first two instances of a repeated element in a vector
    [b,c,d] = unique(vec1, 'first');
    count = 0;
    for num = b
        a = find(vec1 == num);
        if length(a) > 1
            vec1(a([1,2])) = []; %this doesn't take care of two pairs
            %am I supposed to add a point for this?
            count = count + 1;
        end
    end
    vec2 = vec1;
end
