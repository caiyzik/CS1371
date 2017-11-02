function [preferences] = celery(data)
    %get the dips
    dips = data(:,2);
    
    preferences = cell(length(dips), 2);
    %get each top dip
    for num = 1:length(dips)
        name = data(num, 1);
        rankings = data{num, 3};
        top = dips(rankings(1));
        preferences(num, 1) = name;
        preferences(num, 2) = top;
    end
    
    %show_it('result', preferences)
end