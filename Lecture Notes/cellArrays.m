%October 13, 2017

ca = { 42, 'abcdf', [true false true], {1:3 'wow'} 3:-1:2};
showit('basic', ca) %need this in order to display the cell array

% concatenate
ca = [ca {98}] %98 must be converted to a cell with curly brackets in order to concatenated to the end
showit('concat', ca)

% index beyond
ca(9) = {42} %this adds in empty vectors into the cell array instead of zeros
%Does this same type of extentsion work with multidimenisonal arrays?
showit('extend', ca);

% access indexed
showit('access', ca(3))

% access contents
showit('access contents', ca(3))

% store a cell (2 ways)
ca(7) = {'xyz'};
showit('index(1)', ca)

% store a cell in a cell
ca(8) = {99}
showit('index (3)', ca)

%getting stuff out of a cell array
it = ca(4) %this gives back a cell
it = ca{1}{2} %this gives back the actual value

%clicker notes
% ca = {3, {[T F], 'hello'}, 78}
%ca{2}{2}(3) produces an error
% ca{2}{2} is a CELL containing wow. This is a 1x1 cell. 