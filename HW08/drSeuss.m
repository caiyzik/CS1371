function [sentence] = drSeuss(file)
    %open file
    fh = fopen(file);
    
    %read first second and thrid lines from the file
    first = fgetl(fh);
    second = fgetl(fh);
    thrid = fgetl(fh);
    
    %check if first and second line rhyme
    if strcmpi(first(end-1:end), second(end-1:end))
        sentence = sprintf('Wow! Line one and two rhyme, reading this will be a great time.');
    
    %check if the first and thrid line rhyme
    elseif strcmpi(first(end-1:end), thrid(end-1:end))
        sentence = sprintf('Wow! Line one and three rhyme, reading this will be a great time.');
    
    %if none of the lines rhyme
    else
        sentence = 'In line one, two, or three, rhymes were not meant to be.';
    end
    
    %close file
    fclose(fh);
    
end
