function [statement] = war(player1, player2)
    %each player puts down top card
    %player with higher card wins both cards and puts them at the bottom of
    %the stack
    %repeat until one has no cards
    rounds = 0;
    while ~isempty(player1) & ~isempty(player2)
        if isempty(player1) || isempty(player2)
            break
        elseif isequal(player2(1), 2) & isequal(player1(1), 13)
            player2 = [player2(2:end) player2(1) player1(1)];
            player1(1) = [];
        elseif isequal(player1(1), 2) & isequal(player2(1), 13)
            player1 = [player1(2:end) player1(1) player2(1)];
            player2(1) = [];
        elseif player1(1) > player2(1)
            player1 = [player1 player1(1) player2(1)];
            player2(1) = [];
            player1(1) = [];
        elseif player1(1) < player2(1)
            player2 = [player2 player2(1) player1(1)];
            player2(1) = [];
            player1(1) = [];
        end
        rounds = rounds + 1;
    end
    
    if isempty(player1)
        winner = 2;
        loser = 1;
    elseif isempty(player2)
        winner = 1;
        loser = 2;
    end
    
    statement = sprintf('Player %0.0d defeated player %0.0d in %0.0d rounds.', winner, loser, rounds);
end
