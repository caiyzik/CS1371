function [buzzed_str] = buzzCase(input_str)
%takes input string and converts to buzzCase (every space is replaced with a Z)
%convert input string to lowercase
str2 = lower(input_str);
%locate g's and t's
g_idx = strfind(str2, 'g');
t_idx = strfind(str2, 't');
idxs = [g_idx, t_idx];
%calculate number of Zs
num_z = length(idxs);
%replace spaces with 'Z'
buzzed_str = strrep(str2, ' ', repmat('Z', 1, num_z));
end