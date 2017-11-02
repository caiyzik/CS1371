function [words, cell_count] = countCelery(file)
    %open file
    fh = fopen(file);
    %read first line
    line = fgetl(fh);
    cell_count = 0;
    words = {};
    words_ndx = 1;
    while ischar(line)
        %extract all the words from the line
        mask = line == ' ';
        [word, rest] = strtok(rest, ' ');
        for ndx = 1:length(mask)
            words(1,words_ndx) = word;
            [word, rest] = strtok(rest, ' ');
            words_ndx = words_ndx + 1; 
        end
    end
    
    %to get the proper count and unique words
    %1: create new cell array and put unique words in there
    %2: logical indexing?? ismember()
end