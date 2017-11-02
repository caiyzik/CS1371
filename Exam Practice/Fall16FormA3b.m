cellArr = {'bambi', 'PAN', 'lightyear', 'Mulan', 'babs'};

phrase = '';
for ndx = 1:length(cellArr)
    word = cellArr{ndx};
    if mod(length(word), 2) == 0
        middle = word(length(word)./2:length(word)/2 +1);
        phrase = [phrase middle];
    else
        index = round(length(word)/2);
        middle = word(index);
        phrase = [phrase middle]
    end
end

phrase