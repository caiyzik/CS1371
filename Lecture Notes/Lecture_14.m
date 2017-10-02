%%%
% File: Lect_14_for_loops.m
%%%
%   ADMIN
%       Test Wed
%       Reference sheet attached to the test
%
%%%
%   CONCEPT:
%   - if or switch; you can always use a if statement but a switch statment
%   can be easier to understand
%   - repeating a code block
   %warning: for loops are extremely slow! only use them when you need them
%
%%%
%   IMPLEMENTATION
%
%   for loops
%       - repeat a code block a fixed number of times
%       - break statement
%       - implemented by directly accessing a vector
%       - normally implemented by indexing a vector
%           - allows you to change the values in the vector
%       - use only when there is no way to use vector operations
%   EXAMPLES
%       displaying the values of a vector
%
%%%

N = 7;
vec = round(rand(1,N).*100)

function fred
for ndx = 1:length(vec) %going to repeat the loop the same number of times as elements is the vector
    %code block
    value = vec(ndx)
    fprintf('the %dth value is %d\n', ndx, value)
    if value == 96
        break
    end
end

function str = get_th()
end


hippos = strfind(str, 'Hippogriff')
%b(hippos)
c = hippos
%str(hippos(end):end) = [] %get rid of the last instance of 'Hippogriff'
%double(str)
spaces = double(str) == 32 | double(str) == 0
sum_spaces = sum(spaces)
%str(spaces) + 1 ~= ' '
%str(sp(end))
%str = [b()]
%str = [str(spaces(%two spaces in front of the word containing Hippo):str(spaces(2)+10)) 'Hippogriff' str(spaces(3):end)]
%place any leading spaces at the end of the sentence