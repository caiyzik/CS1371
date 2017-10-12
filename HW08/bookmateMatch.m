function [sentence] = bookmateMatch(first_file, second_file)
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
    [timeA, halfA] = strtok(timeA, ' ')
    
    [~, timeB] = strtok(lineB2, ' ');
    [~, timeB] = strtok(timeB, ' ');
    [timeB, halfB] = strtok(timeB, ' ')
    
%     %get the hours
%     if halfA == 'PM'
%         hourA = strtok(timeA, ':') + 12;
%     else
%         hourA = strtok(timeA, ':')
%     end
%     
%     if halfB == 'PM'
%         hourB = strtok(timeB, ':') + 12;
%     else
%         hourB = strtok(timeB, ':')
%     end
%     
    %calc score1
    score1 = round((1 - (timeDiff(timeA, timeB)./ 12)).*20);
    
    %"Stay up late" Compatiblity
    
    
    %Talkativity Compatibility
    
    sentence = '';
end
