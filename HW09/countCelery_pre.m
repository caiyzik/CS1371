function [words, cell_count] = countCelery(file)
    cell_count = 0;
    
    %open file
    fh = fopen(file);
    %read first line
    line = fgetl(fh);
    cell_count = 0;
    words = {};
    words_ndx = 1;
    
    line = lower(line);
    mask = (line >= 'a' & line <= 'z') | (line >= 'A' & line <= 'Z') | line == ' '; 
    line(~mask) = [];
    line = strtrim(line);
    
    while ischar(line)
        %extract all the words from the line
        mask = line == ' ';
        [word, rest] = strtok(line, ' ');
        for ndx = 1:sum(mask)+1
            words{1,words_ndx} = word;
            words{2,words_ndx} = 1;
            [word, rest] = strtok(rest, ' ');
            words_ndx = words_ndx + 1; 
        end
        
        line = fgetl(fh);
        if ischar(line)
            line = lower(line);
            mask = (line >= 'a' & line <= 'z') | (line >= 'A' & line <= 'Z') | line == ' '; 
            line(~mask) = [];
     
            line = strtrim(line);
        end
    end
   
    check = '';
    length(words{1})
    new_words = {};
    index = 1;
    ndx = 1;
    while ~isequal(check, words{1,end})
        if strcmp(words{1,ndx}, 'celery')
            cell_count = cell_count + 1;
        end
        if ~strcmp(words{1, ndx}, check)
            new_words{1, ndx} = words{1, ndx};
            new_words{2, ndx} = 1;
            check = words{1,ndx};
            index = ndx;
        else
            new_words{2, index} = new_words{2, index} + 1;
          
        end
        ndx = ndx + 1;
    end
   
    a = new_words(1,:);
    b = new_words(2,:);
    a1 = a(~cellfun('isempty', a));
    b1 = b(~cellfun('isempty', a));
    [a2, as] = sort(a1);
    words = [a2;b1(as)];

end