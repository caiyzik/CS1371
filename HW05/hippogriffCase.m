function [hippogriff] = hippogriffCase(str)
%remove all numbers and puncuation 
mask = ((str > 0 & str < 9) | ~((str >= 'a' & str <= 'z') | (str >= 'A' & str <= 'Z')) ) & str ~= ' ';
str(mask) = [];

%capitalize the first letter of each word
sp = [str(1) ~= ' ' , str == ' ']; %also keeps track of the first letter of each word
sp(end) = []; %adding a thing to the end to make the matrix dimensions match
%length(sp)
%length(str)
str = lower(str); %lowering the first letters so that the next line works
str(sp) = upper(str(sp));

spaces = [strfind(str, ' ')]%, strfind(double(str), 0)] %vector of indexs of the spaces in str
first_letters = spaces + 1 %vector of the indexs of the first letters in str

hippo = max(regexpi(str, 'Hippogriff')); %returns the index of the last instance of hippogriff
mask = first_letters <= hippo; %returns a logical vector that is true where the indexes of the first letters are less than the last instance of hippogriff
first_letters(mask);

start_hippo = max(first_letters(mask)); %returns the first letter before hippogriff
hippo_ndx = find(first_letters == start_hippo);

%a = first_letters(start_hippo) %== (hippo - 1)
%a = find(a, true) - 1
str_to_move = str(first_letters(hippo_ndx-2): end);
%str_to_move = str(first_letters(start_hippo-3):first_letters(start_hippo)+9)

%str(spaces(a-2): spaces(a))
%take out the spaces and put them back in (extras go on the ends)
%str(spaces_ndxs) = [];
%new_str = 1:(length(str) + num_spaces);
%ew_str

hippogriff = circshift(str, length(str_to_move));

end