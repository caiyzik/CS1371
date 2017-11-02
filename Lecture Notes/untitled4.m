clear
clc

%This function converts a text file into a csv (comma separated values) file. 

m = magic(9);
fh = fopen('delim.txt','w');
[rows cols] = size(m);
for row = 1:rows
    for col = 1:cols
        fprintf(fh, '%d', m(row, col));
        if col < cols
            fprintf(fh, ',');
        end
    end
    fprintf(fh, '\n');
end
fclose(fh);
ouch = csvread('delim.txt')