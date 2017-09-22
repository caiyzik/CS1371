%%%
% File: Lect_06_Strings.m
%%%
%  ADMIN
%
%
clear
clc
% CONCEPT:
%    Strings - allows for more human-like input and output
%            - strings are created using the single quotes ''
%            - a string created with single quotes is actually interpreted
%            as a character by MATLAB. Strings of type "string" can also be created with the
%            double quotes, but we will be focusing on character vectors
%    casting - changing the data type of a value

str = 'ab''cdefg' %notice that the single-quote in the middle "escapes" the single-quote behind it 
%escaping allows us to include special characters in a string without them
%being confused for a part of the code

n = double(str) %this is an example of casting. This will a return a vector of the ASCII values of the 
%                 in the string
%
% IMPLEMENTATION
%    MATLAB strings
%	- Vector of 
v1 = 32:90;
s1 = char(v1) %uses the numbers created in v1 as ASCII values
v2 = 91:127;
s2 = char(v2)

%	- Discuss output in command window
%     - be careful to pay attention to what is in the workspace when
%     debugging your code! Strings can be stored differently than what they
%     look like in the workspace. For example:

v1(1:2:end) = 1 %run this code and see what the string looks like in the command window. 
               %How is different from what is represented in the workspace
               %(pay attention to size). What do you think the next line of
               %code will look like?
char(v1)
%   - upper and lower case
STR = upper(str)
low = lower(str)
%   - int2str - turns a integer into a string that can be printed
nn = 56427
str = int2str(nn) 
%   - num2str - turns any number into a string that can be printed
snd = num2str(pi)
%   - str2num - turns a string into a number that can be manipulated as a
%   number
pie = str2num(snd)
%   - strcmp(a,b) - returns true if the strings match each other, false if
%   they don't
A = 'the quick fat dog is fated fatly'
B = 'The quick fat dog is fated Fatly'
strcmp(A, B) %what will this return?
%   - strcmpi(a,b) - compares the strings but ignores case
strcmpi(A, B)
%   - strfind(str, pattern) - returns the index of the all occurences of
%   the pattern
ooh = strfind(A, 'fat')
lower = ooh - 2
upper = ooh + 1 + length('fat')
word = lower:upper
ans = A(word)

%below is discussed in the next lecture...
%   - input(...)
%   - fprintf
%   - sprintf
%   - strtok
