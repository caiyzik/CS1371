function greatGatsby(invited, arrived, capacity)
    %Let all guests in FIRST then allow others in 
    
    %open files
    fh1 = fopen(invited);
    fh2 = fopen(arrived);
   
    %take out title of list and convert to file name
%     title = fgetl(fh1);
%     ndx = strfind(title, 'Guests');
%     title(ndx:ndx+6) = []; %remove guests from the title
%     mask = (title >= 'A' & title <= 'Z') | (title >= 'a' & title <= 'z') | (title >= '0' & title <= '9'); 
%     title(~mask) = [];
    
    filename = [strtok(invited, '_') '_attended.txt'];
    
    %open output file
    fh3 = fopen(filename, 'w');
    fprintf(fh3, 'Attended:\n');
    
    %convert invited list into one string to search through
    name = ' ';
    list = '';
    while ischar(name)
        list = [list name];
        name = fgetl(fh1); %Do I need to add a space?
    end
    
    %could add up the guests and check against cap??
    
    %run through the arrived list 
    arr_name = '';
    title2 = fgetl(fh2);
    count = 0;
    waitlist = '';
    while ischar(arr_name) %can use a for loop?
        %check to see if the name matches the guest list
        arr_name = fgetl(fh2);
        %if so write the name to attended
        
        if ~isempty(strfind(list, arr_name)) & (count < capacity)
            fprintf(fh3, '%s\n', arr_name); %Do I need the new line?
            count = count + 1;
        else
        %if not collect the name for reconsideration
            waitlist = [waitlist arr_name ':'];
        %count the amount of people added to the attended list
        %gotta make sure you don't go over the cap!!!
        end
    end
    
    [name, rest] = strtok(waitlist, ':');
    for ndx = 1:(capacity-count)
        %if count < capacity %equal to?
        if ndx == capacity - count
            fprintf(fh3, '%s', name);
        else
            fprintf(fh3, '%s\n', name);
        end
        [name, rest] = strtok(rest, ':');
    end
end