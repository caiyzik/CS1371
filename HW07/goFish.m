function [statement, score] = goFish(player1, player2, deck)
%Notes
%game ends when a player runs out of cards

%get rid of pairs
player1 = remRepeats(player1);
player2 = remRepeats(player2);

%initialize players scores
score_1 = 0;
score_2 = 0;

while ~isempty(player1) & ~isempty(player2)
    %%%%%%%%%%%%%player1 turn%%%%%%%%%%%%%%%%%
    %player 1 ask for the first card 
%     test1 = player1(1)
%     test2 = player2(1)
%     test3 = isequal(test1, test2)
    if isequal(player1(1), player2(1))
        player1(1) = []; %if player does have first card: remove from both hands and add a point
        player2(1) = [];
        score_1 = score_1 + 1;
    else
    %if player doesn't have first card: take first card from deck and append to end of hand
        if isequal(player1(1), deck(1)) %check to see if there is a pair: if so add a point (and remove the pair?)
            score_1 = score_1 + 1;
            player1(1) = [];
        else
            player1 = [player1 deck(1)];
        end
        deck(1) = [];
    end
    
    %switch players/turns ("exchange" cards and scores)
    a = player1;
    b = player2;
    c = score_1;
    d = score_2;
    player1 = b;
    player2 = a;
    score_1 = d;
    score_2 = c;
    
    %idk how to keep track of which player is which at the end and my
    %scores are currently counted incorrectly
    %something also exceeds matrix dimensions
end


statement = '';
score = 0;

end

function [vec2] = remRepeats(vec1)
    %removes the first two instances of a repeated element in a vector
    [b,c,d] = unique(vec1, 'first');
    for num = b
        a = find(vec1 == num);
        if length(a) > 1
            vec1(a([1,2])) = []; %this doesn't take care of two pairs
            %am I supposed to add a point for this?
        end
    end
    vec2 = vec1;
end