function [mist_inits, orig_pos] = suspects(initials, sus_familiar)
    %initials = strspilt(initials); 
    
    mistakes = ~sus_familiar; %return an array of indexs of false values in sus_familiar
    new_vec = [mistakes mistakes];
    length_of_new_vec = length(new_vec);%create a new vector that is the same size of the sus_familar 
    new_vec(1:2:end) = mistakes;
    new_vec(2:2:end) = mistakes;
    initials(initials==' ') = [];
    %c = double(initials);
    mist_inits_1 = initials(new_vec); %unsorted
    [new_inits, sort_that] = sort(mist_inits_1(1:2:end));
    d = char(ones(1,length(new_inits).*3));
    %length(d(1:3:end));
    %length(new_inits);
    d(1:3:end) = new_inits;
    second_letters = mist_inits_1(2:2:end);
    d(2:3:end) = second_letters(sort_that);
    d(d == 1) = ' ';
    mist_inits = d;
    orig_pos = find(sus_familiar);
end