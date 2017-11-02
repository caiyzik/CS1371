function [complete_data] = saveTheWhales(data)
    %get fieldnames
    letters = cell2mat(fieldnames(data));
    letter_nums = double(letters); %convert org field names to doubles for linspace
    fullfields = linspace(letter_nums(1), letter_nums(end), letter_nums(end)-letter_nums(1)+1);
    remain = char(setdiff(fullfields, letter_nums))
    fullfields = char(fullfields);
    
    for ndx = 1:length(fullfields)
        %if the field is already a field assign its value back to the
        %complete structure
        if isfield(data, fullfields(ndx))
            complete_data.(fullfields(ndx)) = data.(fullfields(ndx));
        else 
        %if the field is new
            spaces = 1; %represents the amount of field between original fields
            for jdx = ndx+1:length(fullfields)
                if ~isfield(data, fullfields(jdx))
                    spaces = spaces + 1;
                elseif isfield(data, fullfields(jdx))
                    complete_data.(fullfields(ndx)) = round( (  (  (data.(fullfields(jdx))  ) - (complete_data.(fullfields(ndx-1))  )) / (spaces+1) ) + complete_data.(fullfields(ndx-1)), 2 );
                    
                end
            end
        end
    end
    
    st = data;
    %change the order of the fields
    for ndx = 1:length(remain)
        st.(remain(ndx)) = complete_data.(remain(ndx));
    end
    
    complete_data = st;
end