function [list, celery] = countCelery(file)
   
    %global variables
    global words
    global chars
    global sents
    global word_list
    global word_count
    global cel
    
    cel = 0;
    sents = 0;
    chars = 0;
    words = 0;
    
    word_list = [];
    word_count = [];
    
    %open file
    fh = fopen(file, 'r');
    
    line = '';
    while ischar(line)
        line = fgetl(fh);
        line = cleanLine(line);
        if ischar(line)
            if ~isempty(line)
                process_line(line);
            end
        end
    end
%     fprintf('there are %d words in %s\n', words, name)
%     fprintf('there are %d characters in %s\n', chars, name)
%     fprintf('there are %d sentences in %s\n', sents, name)
%     chars_per_syll = 2.44;
%     sylls = chars ./ chars_per_syll;
%     reading_level = 0.39 .* words ./ sents ...
%     		+ 11.8 .* sylls ./ words ...
%     		-15.59;
%     fprintf('the reading level for %s is %0.2f\n', ...
%             name, reading_level)
%         [word_list, order] = sort(word_list);
%         word_count = word_count(order);
%         out = fopen('word_list.txt', 'w');
%         for ndx = 1:length(word_list)
%             fprintf(out, '%20s:: %4d\n', word_list{ndx}, word_count(ndx));
%         end
        fclose(fh);
        [sorted, ndxs] = sort(word_list);
        list = [sorted; num2cell(word_count(ndxs))];
        celery = cel;
end

function process_line(ln)
    
    global cel;
    while ~isempty(ln)
        [word, ln] = strtok(ln, ' ');
        if isequal(word, 'celery')
            cel = cel + 1;
        end
        if ~isempty(word)
            process_word(word)
        end
    end
end

function process_word(wd)
    global words
    global chars
    global word_list
    global word_count
    words = words + 1;
 
    wd = lower(wd);
    onit = find(strcmp(word_list,wd));
    if isempty(onit)
        word_list = [word_list, {wd}];
        word_count(length(word_list)) = 1;
    else
        word_count(onit) = word_count(onit) + 1;
    end
end

function [ln] = cleanLine(line)
    line = lower(line);
    mask = (line >= 'a' & line <= 'z') | (line >= 'A' & line <= 'Z') | line == ' '; 
    line(~mask) = [];
    if ischar(line)
        line = strtrim(line);
        ln = line;
    else 
        ln = -1;
    end
end