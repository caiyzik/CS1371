function [tribute] = hungerGames(file)

%open file
fh = fopen(file);

%read in each line and take the average scores of each line
%Katniss Everden should always be most favored to win

line = '';
grand = 0;
kat = '';
kat_score = 0;

while ischar(line)
    line = fgetl(fh);
    if ischar(line)
        if ~isempty(line)
            [name, avg] = getNameandAverage(line);
        end
    end
    
    if strcmpi(name, 'Katniss Everdeen') | strcmpi('Katniss', name) | strcmpi('The Girl on Fire', name)
        kat = 'Katniss Everdeen';
        kat_score = 11;
    end
    
    grand = max(avg, grand);
    if avg == grand
        winner = name;
        winner_score = avg;
    end
    
end

if kat
    tribute = 'Katniss Everdeen is most favored to win with a never before seen score of 11!';
else
    tribute = sprintf('%s is most favored to win with a score of %d!', winner, winner_score);
end

end

%if isequal(name, 'Katniss Everdeen') | isequal('Katniss', name) | isequal('The Girl on Fire', name)

function [name, avg] = getNameandAverage(line)
    %get name
    [name, rest] = strtok(line, ':');
    rest = rest(2:end);
    
    tot_score = 0;
    count = 0;
    %get the scores
    while ~isempty(rest) 
        [score, rest] = strtok(rest, ',');
        score = str2num(score);
        tot_score = tot_score + score;
        count = count + 1;
    end
    
    avg = round(tot_score./count);
end