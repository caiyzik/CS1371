%%%
% File: Lect_07_Strings.m
%%%
%  ADMIN
%
%   PRS Test
%
% CONCEPT:
%    Strings

%Notes from NOtes
x = char(?D?) - 3
MATLAB defaults to the thing that can hold the larger number
%
clear
clc
% IMPLEMENTATION
%    MATLAB strings
%	- Vector of ASCII
%	- Discuss output in command window
%   - upper and lower case
%   - int2str
%   - num2str
%   - str2num
%   - strcmp(a,b)
%   - strcmpi(a,b)
%   - strfind(str, pattern)
%   - fprintf -- to the command window
%  'the value of pi is 3.142'
name = 'pisywysie'
val = pi

%fprintf outputs a formatted string to the command window
%syntax: %<number of spaces before the variable>.<decimal points displayed
%if the variable is a number><a letter representing the type>
fprintf('the value of >>%10s<< is >>%10.3f<<\n', name, val) %the 10 gives you spaces, the right gives you decimal points
%   - sprintf -- returns a formatted string instead of outputting it to the
%   console
str = sprintf('the value of >>%10s<< is >>%10.3f<<\n', ...
    name, val); 
nstr = 'abc\ndef\nghi\n';
nstl = length(nstr)
st = sprintf(nstr)
stl = length(st);
st = [st char(10) char(10)]
double(st)
%   - strtok - finds first instance of a token and returns the index of the
%   token and the string after it
str = '  it   =  42  +  6';
[tk1 rest] = strtok(str, ' ')
[tk2 rest] = strtok(rest, ' ')
[tk3 rest] = strtok(rest, ' ')
n3 = str2num(tk3);
[tk4 rest] = strtok(rest, ' ')
[tk5 rest] = strtok(rest, ' ')
n5 = str2num(tk5);
fprintf('compute %d %s %d and store the result in %s\n', ...
    n3, tk4, n5, tk1)

%   - input(...) - allows the user to input things into the code. the 's'
%   argument makes the function return a string
str = input('Waddayawant? ','s');
[tk1 rest] = strtok(str, ' ')
[tk2 rest] = strtok(rest, ' ')
[tk3 rest] = strtok(rest, ' ')
n3 = str2num(tk3);
[tk4 rest] = strtok(rest, ' ')
[tk5 rest] = strtok(rest, ' ')
n5 = str2num(tk5);
fprintf('compute %d %s %d and store the result in %s\n', ...
    n3, tk4, n5, tk1)
