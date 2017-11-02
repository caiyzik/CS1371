function [city_blocks, distance] = zooBreak(blocks, escapee)
    %get all inhabitants
    inhabs = {blocks.Inhabitants};
    %get the index of the escape
    [x1, y1] = ind2sub(size(blocks), find(strcmp(inhabs, escapee)));
    
    %get all places
    places = {blocks.Place};
    %get the index of the zoo
    [x2, y2] = ind2sub(size(blocks), find(strcmp(places, 'zoo')));
    
    %calc distance
    distance = sqrt((x1-x2)^2 + (y1 - y2)^2);
    %put the escapee back in the zoo
    
    mask = strcmp(blocks(x1, y1).Inhabitants,escapee);
    blocks(x1, y1).Inhabitants = blocks(x1, y1).Inhabitants(~mask);
    blocks(x2, y2).Inhabitants{end+1} = escapee;
    
    city_blocks = blocks;
end