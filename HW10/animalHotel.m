function [struct_arr] = animalHotel(cell_arr)
    [r,c] = size(cell_arr); %get size of the cell array
    fields = cell_arr(1, :); %extract the fields of the struct array
    for ndx = 1:c %iterate through columns
        field = fields{ndx}; %get one field
        for jdx = 2:r %iterate through rows
            struct_arr(jdx-1).(field) = cell_arr{jdx, ndx}; %assign the value to the struct array
        end
    end
end