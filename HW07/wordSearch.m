function [solved, indices] = wordSearch(unsolved, words)

solved = unsolved;
for ndx = 1:length(words)
    a = words(ndx, :);
    a(a == ' ') = [];
    [solved, ndxs] = quibbler(a, solved);
    for ndx = ndxs
        ind2sub
    end
end
 
indices = ''
end

function [crossed_out, ndx] = quibbler(word, word_search)

[r,c] = size(word_search);
ndx = []
%search for word on in cols
str = word_search(:)'; %return a character vector
ndxs1 = strfind(str, word); %search for forwards version of the string
backwards = word(end:-1:1);
ndxs2 = strfind(str, backwards); %backwards

ndxs = [ndxs1 ndxs2];
ndx = [ndx ndxs];
str(ndxs:ndxs+length(word)-1) = '#'; %cross out the word
rep = 'reshape'
str = reshape(str, [c, r])

%search for word in rows
search = str';
str = search(:)';
ndxs3 = strfind(str, word); %forwards
ndxs4 = strfind(str, backwards); %backwards

%group the indexs
ndxs = [ndxs3 ndxs4];
ndx = [ndx ndxs];
%cross out the word
str(ndxs:ndxs+length(word)-1) = '#';
%return crossed out array 
crossed_out = reshape(str, [c, r]);
crossed_out = crossed_out';
end