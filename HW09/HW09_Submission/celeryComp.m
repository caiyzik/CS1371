function [bracket] = celeryComp(file, rankings)
    %open the file
    [nums, text, raw] = xlsread(file);
    
    %get the number of columns for the final bracket
    m = log2(length(raw));
    
    %initialize the final bracket
    bracket = cell(length(raw), m+1);
    bracket(:, 1) = raw; %assign the first column to the original contenders
    
    %initialize variables for loops
    count = 2;
    vec = [];
    
    %iterate through the columns of the final bracket
    for k = 1:m
        new_bracket = bracket(:,k);
        
        %pick two contenders from the bracket and place them in the next
        %round
        vec = [];
        for ndx = 1:2:length(bracket(:,k))
            
            contender1 = new_bracket(ndx);
            contender2 = new_bracket(ndx + 1);
        
            %find rankings of each contender
            rank1 = false;
            rank2 = false;
            for jdx = 1:length(rankings)
                curr_rank = rankings(jdx);
                if strcmp(curr_rank, contender1)
                    rank1 = jdx;
                elseif strcmp(curr_rank, contender2)
                    rank2 = jdx;
                elseif rank1 & rank2
                    break;
                end
            end
        
            %move to next bracket
            if rank1 < rank2
                vec = [vec; contender1];
            else
                vec = [vec; contender2];
            end
        end
    %put the vec in bracket as a column
    plus = length(bracket(:,k)) - length(vec); %get the amount of empty spaces to be added
    for g = 1:plus
        vec = [vec ;{''}]; %should I use brackets?
    end
    bracket(:, k+1) = vec;
    
    end
end