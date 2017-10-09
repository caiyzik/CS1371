function [outcome] = scrabbleScore(word_scores, opp_scores)
    %sum your scores
    your_score = 0;
    for num = word_scores
        your_score = your_score + num;
    end
    
    %sum your friends scores
    friend_score = 0;
    for num = opp_scores
        friend_score = friend_score + num;
    end
    
    if your_score > friend_score
        outcome = 'I am the Scrabble champion!';
    elseif friend_score > your_score
        outcome = 'Beginner''s luck...';
    else %this doesn't take care of edge cases where the scores are invalid (idk if they can be negative)
        outcome = 'I challenge you to a rematch!';
    end
end