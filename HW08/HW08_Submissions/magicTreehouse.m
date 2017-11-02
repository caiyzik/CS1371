function [vec] = magicTreehouse(file, first, second)
    %%%CORRECT%%%%

    %initialize output vector
    vec = [0, 0];
    
    %open file
    fh = fopen(file, 'r');
    if fh < 0
        error('bad file name');
    end
    %read lines
    line = '';
    while ischar(line)
        line = fgetl(fh);
        %get rid of punctuation
        mask = (line > 64 & line < 91) | (line > 96 & line < 123) | line == 32;
        line = line(mask);
        
        %search for words
        if ischar(line)
            while ~isempty(line)
                [word, line] = strtok(line, ' ');
                one = strcmp(word, first);
                two = strcmp(word, second);
                
                if one
                vec(1) = vec(1) + 1;
                end
                if two
                vec(2) = vec(2) + 1;
                end
            end
        end
        
    end
end
