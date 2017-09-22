function [magic_square] = spellCheck(chars)
%check that array is square
[r, c] = size(chars);
test1 = r == c;

%convert to numbers
nums = double(chars);

%check if the cols have the same sum
col_sum = sum(nums);

%check if the rows have the same sum
row_sum = sum(nums, 2);

%check main diagonal
num_vec = nums(:)';
main_diag = num_vec(1:r+1:end);
diag_sum1 = sum(main_diag);

%check minor diagonal
flip = nums';
num_vec = flip(:)';
min_diag = num_vec(1:r+1:end);
diag_sum2 = sum(min_diag);

test2 = isequal(diag_sum1,diag_sum2,col_sum(1),row_sum(1));

magic_square = test1 & test2;
end