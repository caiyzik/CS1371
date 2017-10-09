function [solved, indices] = wordSearch(unsolved, words)
solved = quibbler(words(1), unsolved); 
for word = words(2:end)
    solved = quibbler(word, solved)
 end
end

function [crossed_out] = quibbler(word, word_search)
%search for word on in cols
str = word_search(:)'; %return a character vector
ndxs1 = strfind(str, word); %search for forwards version of the string
backwards = word(end:-1:1);
ndxs2 = strfind(str, backwards); %backwards

ndxs = [ndxs1 ndxs2];

str(ndxs:ndxs+length(word)-1) = '#'; %cross out the word
str = reshape(str, [length(word_search(:,1)), length(word_search(1,:))]);

%search for word in rows
search = str';
str = search(:)';
ndxs3 = strfind(str, word); %forwards
ndxs4 = strfind(str, backwards); %backwards

%group the indexs
ndxs = [ndxs3 ndxs4];

%cross out the word
str(ndxs:ndxs+length(word)-1) = '#';
%return crossed out array 
crossed_out = reshape(str, [length(word_search(:,1)), length(word_search(1,:))]);
crossed_out = crossed_out';
end