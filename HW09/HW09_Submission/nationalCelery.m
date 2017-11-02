function [decoded] = nationalCelery(file, declaration)
    %open text file
    fh = fopen(file);
    
    %initialize output string
    decoded = '';
    
    %get indexes and spaces from text file
    line = fgetl(fh); %get first line
    while ischar(line)
        if isequal(line, 'space') %check to see if a space should be added
            decoded = [decoded ' '];
        else
            %get the indexes
            [r, rest] = strtok(line, '-');
            [c, char_num] = strtok(rest, '-');
            
            %get the proper string from the declaration
            str = declaration(str2num(r),str2num(c));
            
            %index the string and add it to the output string
            ndx = str2num(char_num(2:end));
            decoded = [decoded str{1}(ndx)];
        end
        line = fgetl(fh);
    end
end