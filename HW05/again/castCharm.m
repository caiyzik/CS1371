function [magic_arr] = castCharm(arr1, arr2, num)
%find instances of magic num in first array
magic_ndx = arr1 == num;
%find nums with corresponding positions in the second array
matching = arr2(magic_ndx);
%sum the nums
rep_num = sum(matching(:));
%replace the magic num with the sum
arr1(magic_ndx) = rep_num;
magic_arr = arr1;
%remember to return an unchanged array if there are no magic nums
end