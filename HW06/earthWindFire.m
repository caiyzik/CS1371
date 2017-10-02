function [winner] = earthWindFire(player1, player2)
if strcmp(player1, player2)
    winner = 'It''s a tie!';
    
elseif strcmp(player1,'earth') & strcmp(player2, 'wind')
    winner = 'Player 1 wins!';
    
elseif strcmp(player1,'earth') & strcmp(player2,'fire')
    winner = 'Player 2 wins!';
    
elseif strcmp(player1,'wind') & strcmp(player2,'earth')
    winner = 'Player 2 wins!';
    
elseif strcmp(player1,'wind') & strcmp(player2,'fire')
    winner = 'Player 1 wins!';
    
elseif strcmp(player1,'fire') & strcmp(player2, 'wind')
    winner = 'Player 2 wins!';
    
elseif strcmp(player1,'fire') & strcmp(player2, 'earth')
    winner = 'Player 1 wins!';
end
end
