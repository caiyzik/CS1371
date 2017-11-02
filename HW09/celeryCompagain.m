function [bracket] = celeryComp(file, rankings)
    [nums, text, raw] = xlsread(file);
    
    for ndx = 1:2:length(raw)
        contender1 = raw(ndx);
        contender2 = raw(ndx + 1);
        
        %find rankings
        for jdx = 1:length(rankings)
            curr_rank = rankings(jdx);
            if strcmp(curr_rank, contender1)
                rank1 = jdx;
            elseif strcmp(curr_rank, contender2)
                rank2 = jdx;
            end
        end
        
        %move to next bracket
        if rank1 < rank2
            vec = [vec contender1];
        else
            vec = [vec contender2];
        end
    end
end