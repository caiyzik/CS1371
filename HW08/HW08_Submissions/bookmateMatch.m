function [sentence] = bookmateMatch(first_file, second_file)
    %%%%CORRECT%%%%

    %open files
    first = fopen(first_file);
    second = fopen(second_file);
    
    %get first 8 lines
    lineA1 = fgetl(first);    
    lineA2 = fgetl(first); 
    lineA3 = fgetl(first); 
    lineA4 = fgetl(first); 
    lineA5 = fgetl(first); 
    lineA6 = fgetl(first); 
    lineA7 = fgetl(first); 
    lineA8 = fgetl(first); 
    
    lineB1 = fgetl(second);
    lineB2 = fgetl(second);
    lineB3 = fgetl(second);
    lineB4 = fgetl(second);
    lineB5 = fgetl(second);
    lineB6 = fgetl(second);
    lineB7 = fgetl(second);
    lineB8 = fgetl(second);
      
    %get names
    [~ , name1] = strtok(lineA1, ' ');
    [~ , name2] = strtok(lineB1, ' ');
    
    %%%%%%%%%%%%%%%%%calc compatibility points%%%%%%%%%%%%%%%%%%%
    
    %first class compatibility
    
    %get the times
    [~, timeA] = strtok(lineA2, ' ');
    [~, timeA] = strtok(timeA, ' ');
    
    [~, timeB] = strtok(lineB2, ' ');
    [~, timeB] = strtok(timeB, ' ');
    %[timeB, halfB] = strtok(timeB, ' ');
       
    %calc score1
    score1 = round((1 - timeDiff(timeA(2:end), timeB(2:end))./ 12).*20);
    
    %"Stay up late" Compatiblity
    
    lateA = 0;
    lateB = 0;
    
    
    %for line = [lineA4; lineA5; lineA6] is line is a bad idea anyway
    %because you can't concatenate vectors of different lengths
    %Note putting character vectors in a vector will make it into one string and you will be iterating through the characters
    
    if ~isempty(regexp(lineA4, 'X'))
        lateA = 1;
    elseif ~isempty(regexp(lineA5, 'X'))
        lateA = 2;
    elseif ~isempty(regexp(lineA6, 'X'))
        lateA = 3;
    end
    
    
    if ~isempty(regexp(lineB4, 'X'))
        lateB = 1;
    elseif ~isempty(regexp(lineB5, 'X'))
        lateB = 2;
    elseif ~isempty(regexp(lineB6, 'X'))
        lateB = 3;
    end
        
    %calc
    if isequal(lateA, lateB)
        score2 = 20;
    elseif abs(lateA - lateB) == 1
        score2 = 10;
    else
        score2 = 0;
    end
    
    %Talkativity Compatibility
    
    %get all the lines from the rest of the texts
    line = '';
    linesA = '';
    while ischar(line) 
        %The problem: when the below two lines are reversed it will
        %concatenate a -1 onto the line. 
        linesA = [linesA line];
        line = fgetl(first);
    end
    linesA = strtrim(linesA);
    
    line = '';
    linesB = '';
    while ischar(line)
        linesB = [linesB line];
        line = fgetl(second);
    end
    linesB = strtrim(linesB);
    
    %calc
    %need to take care of division by zero?
    smaller = min(length(linesA), length(linesB));
    larger = max(length(linesA), length(linesB));
    
    score3 = (smaller./larger).*20;
    score3 = round(score3);
    
    %calculate FINAL score
    compat = ((score1 + score2 + score3)./ 60).*100;
    compat = round(compat);
    sentence = sprintf('%s and%s have a %d%% bookmate compatibility score.', name1, name2, compat);
    sentence = strtrim(sentence);
end
