function [remodeled] = remodelZoo(zoo)
    %calcPopularity and remove u[sic]ga field for each exhibit
    [r,c] = size(zoo);
    for ndx = 1:c
        for jdx = 1:r
            temp(jdx,ndx) = calcPopularity(zoo(jdx,ndx));
        end
    end
    
    
    remodeled = rmfield(temp, 'ugaRank'); %this is 3x3
        
    pop = [remodeled.popularity];
    pop = reshape(pop, [r,c]);
    row = sum(pop,2);
    [tmp, ind] = sort(row, 'descend');
    remodeled = remodeled(ind, :);
   
end