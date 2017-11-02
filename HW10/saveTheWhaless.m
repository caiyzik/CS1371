function [complete_data] = saveTheWhaless(data)
    %find missing values
    %get fieldnames
    names = fieldnames(data);
    letters = cell2mat(names);
    letters = double(letters); %convert to double so you can do math on it
    
    list = linspace(letters(1), letters(end), letters(end)-letters(1)+1);
    remain = char(setdiff(list, letters))
    all_vals = char(union(list, letters))
    
    %create new structure
    fields = [remain];
    for field = fields
        data.(field) = [];
    end
    
    complete_data = data;
    
    %find old data
    nums = [];
    for ndx = 1:length(names)
        nums = [nums data.(names{ndx})];
    end
    
    nums = diff(letters);
    %all_vals == remain
    ndxs = find(all_vals == remain);
    
    new_data = [];
    for jdx = 1:length(ndxs)
        %goal: using the index of the new field calc the new data and
        %assign to the new field
        [r,c] = ind2sub(size(all_vals), ndxs(2));
        vec = linspace(nums(r-1), nums(r+1), nums(r+1)-nums(r-1));
        complete_data.(fields(r)) = vec(2);
    end
  
end