%October 4, 2017
%ANNOUNCEMENTS
%PRS will not be graded until everyone is able to register their clickers

%Continuing Low Level I/O (Input/Output)

function wow
    %this function reads a text file and counts the sentences, words, and
    %characters in the file
    global words %global variables can be seen outside of the scope of all functions
    global chars
    global sents
    sents = 0;
    chars = 0;
    words = 0;
    name = 'mercy.txt';
    dir = '../text_files/';
    fullName = [dir, name];
    fh = fopen(fullName, 'r');
    if fh < 0
        error('bad file name')
    end
    line = '';
    while ischar(line)
        line = fgetl(fh);
        if ischar(line)
            process_line(line);
        end
    end
%	reading_level = 0.39 .* total_words ./ total_sents ...
%		+ 11.8 .* total_syllables ./ total_words ...
%		-15.59;
    fprintf('there are %d words in %s\n', words, name)
    fprintf('there are %d characters in %s\n', chars, name)
    fprintf('there are %d sentences in %s\n', sents, name)
end

function process_line(ln)
    %This helper function processes the sentences and words in a line
    global sents
    delims = ' ,.?!:;-';
    while ~isempty(ln)
        [word, ln] = strtok(ln, delims);
        if isempty(ln)
            punct = ' ';
        else
            punct = ln(1)
        end
        if any(punct == '.?!')
            sents = sents + 1;
        end
        if ~isempty(word)
            process_word(word)
        end
    end
end

function process_word(wd)
%this helper function processes the words on each line, changing the amount
%of total words and characters
    global words
    global chars
    words = words + 1;
    chars = chars + length(wd);
end