function library(book_title, num_lines, num_title_rep)
    
    %create file name
    [first, ~] = strtok(book_title, ' ');
    file = [lower(first) '.txt'];
    %open the file
    out = fopen(file, 'w');
   
    for line = 1:num_lines
        text = ''; %create title text to be written to file
        for titles = 1:num_title_rep
            text = [text, ' ', book_title];
        end
        %a = sprintf('Line %0.0d.%s\n', line, text)
        if line == num_lines
            fprintf(out, 'Line %0.0d.%s', line, text);
        else
            fprintf(out, 'Line %0.0d.%s\n', line, text);
        end
    end
    
    fclose(out);
end
