%October 11, 2017
%This is a continuation of Low Level File I/O
%This function reads a text file and saves each movie into a struct
%a struct allows you to create your own types similiar to how an integer or
%a logical is is own type

function mv = make_movies
clc
    fh = fopen('movies.txt','r');
    line = fgetl(fh);
    line = fgetl(fh);
    mv = [];
    while ischar(line) 
        line = fgetl(fh);
        if ischar(line) 
            mv = [mv make_movie(line)];
        end
    end
end

function mv = make_movie(line)
%  Header Record
% TW|LW|Title|Studio|Weekend|Gross|%Change|	...
%           Theater|Count|Change|Average|Total Gross|Budget|Week|
% Typical Data
% 1|2|Identity Thief|Uni.|$14,064,000|-40.6%|3,222|+57|$4,365|$93,667,000|$35|3
%  Both tab delimited
    [token line] = strtok(line, char(9));
    mv.TW = getNum(token); %structName.attribute = something assigns a structs attributes to some value
    [token line] = strtok(line, char(9));
    mv.LW = getNum(token);
    [token line] = strtok(line, char(9));
    mv.Title = token;
    [token line] = strtok(line, char(9));
    mv.Studio = token;
    [token line] = strtok(line, char(9));
    mv.Weekend_gross = getNum(token);
    [token line] = strtok(line, char(9));
    mv.Weekend_change = ceil(getNum(token));
    [token line] = strtok(line, char(9));
    mv.Theater_count = getNum(token);
    [token line] = strtok(line, char(9));
    mv.Theater_change = getNum(token);
    [token line] = strtok(line, char(9));
    mv.Average = getNum(token);
    [token line] = strtok(line, char(9));
    mv.Gross = getNum(token);
    [token line] = strtok(line, char(9));
    mv.Budget = getNum(token);
    [token line] = strtok(line, char(9));
    mv.Week = getNum(token);
end

function res = getNum( str )
    str = str(str ~= ' ' & str ~= '$' & str ~= ',' & str ~= '%' & str ~= '+');
    if length(str) == 1 && (str(1) == '-' || str(1) == 'N')
        res = NaN;
    else
        res = str2double(str);
    end
end
        
    