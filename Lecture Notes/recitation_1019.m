% 
% recitation notes
cell{2} = [] %you are placing an empty bracket inside the cell
cell{2}{1} = [] % two layers deep
cell(1) = [] %deletes the whole first cell

indexing multipel things
cell = {1, 2, 3, 4}
cell{:}

vec = [cell2{1,2,3,4}] then vec will equal to [1,2,3,4]
[b,c,d] = a{:} assigns the value in first cell to b, and so on

look up what the sort function does on cells

num2cell
cell2num

cell arrays are also in switch statements
strcomp on cell arrays


%%excel files
math with NaN will return NaN
use isNaN() to see where NaNs are
text is outputed in a cell array
all other spots will be filled with an empty string
raw is everything in a cell array

xlswrite(filename, raw) raw can be a cell array or a regular array
