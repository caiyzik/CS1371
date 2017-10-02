Rectation notes
indexing for the sorting square
uppersquare = arr(1:end/2, end/2:end)
you can also index an array with a single number. Goes down the columns
find can be used on arrays to get the indices 
[r, c] = find(arr)
r - row coordinate c- col coords 

length gives you the longest length 
use size instead [r , c] = size(arr) 
[~, c] = size(arr) gives you the cols

sum() takes the sum down the cols
what about sum down the rows - can transpose or sum(arr, 2) (rows is the second dim)

make sure to use the dot