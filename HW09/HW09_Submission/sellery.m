function [sentence] = sellery(xslfile)
    [nums, text, raw] = xlsread(xslfile);
    nums(isnan(nums)) = 0;
    %whole thing is a 7x4 cell
    [r, c] = size(raw);
    titles = text(1,:);
    
    %find the columns where the revenue and expenditures are
    for cl = 1:length(titles)
        title = titles{cl};
        if isequal(title, 'Revenue')
            rev_ndx = cl;
        elseif isequal(title, 'Expenditure')
            exp_ndx = cl;
        end
    end
    
    %add the revenue
    revs = nums(:,rev_ndx);
    total_rev = sum(revs);
    %add the expenditures
    exp = nums(:, exp_ndx);
    total_exp = sum(exp);
    
    total = total_rev - total_exp;
    if total >= 0
        sentence = sprintf('You made a profit of $%.2f!', total);
    else
        sentence = sprintf('You are $%.2f in debt!', abs(total));
    end
end