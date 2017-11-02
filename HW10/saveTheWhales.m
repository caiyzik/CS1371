function [out] = saveTheWhales(in)

letters = fieldnames(in);
letters = cell2mat(letters);
letters2nums = double(letters); %makes the letters into a vector of double values
newfields = linspace(letters2nums(1),letters2nums(end), letters2nums(end) - letters2nums(1) + 1);
newfields = char(newfields);

for ind = 1:length(newfields)
    if isfield(in, newfields(ind))
       out.(newfields(ind)) = in.(newfields(ind));
    else
       count = 1;
       for ind2 = ind+1:length(newfields)
           if ~isfield(in, newfields(ind2))
              count = 1 + count; %number of 'spaces' until next field given in original in
           elseif isfield(in,newfields(ind2))
               out.(newfields(ind)) = round((((in.(newfields(ind2))) - (out.(newfields(ind-1)))) / (count+1)) + out.(newfields(ind-1)),2);
               break
           end
       end
    end
end

end