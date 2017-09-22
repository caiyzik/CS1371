%Lecture 13: Conditionals
%%%
% File: Lect_13_Conditionals.m
%Conceptual questions advice. Try to think about what could go wrogn first
%before tracing the code with values

%%%
%   ADMIN
%       Test next Wed
%
%%%
%   CONCEPT
%   - Code Block [instructions between blue words]
%   - Conditional Execution
%   -- deciding whether or not to run a code block
%
%%%
%   IMPLEMENTATION
%
%   -   switch statement - evaluates the value of one variable
%   -   alternate means of choosing once code block to run
%
%   switch <variable>
%       case {<value1(s)>} %if ANY of values are true then the code block
%       will be executed
%           <code block 1>
%       case {<value2(s)>}
%           <code block 2>
%       case {<value3(s)>}
%           <code block 3>
%           .
%           .
%           .
%       otherwise %you don't use this and none of the values are true
%       nothing will happen. (Similiar to a single if statement)
%           <catch-all code block>
%   end
%%%

%EXAMPLE
clear 
clc

month = input('What month? ');
switch month
    case {9, 4, 6, 11}
        days = 30;
    case 2
        yes = input('Is this a leap year? (Y/n)', 's');
        if isempty(yes) || yes(1) == 'Y' || yes(1) == 'y' %(yes == 'Yes') don't do this because its treating Yes as a char array 
            days = 29;
        else
            days = 28;
        end
    case {1, 3, 5, 7, 8, 10, 12}
        days = 31;
    otherwise 
        days = 31;
end

%switch statements don't care as much about the type
fprintf('Month %d has %d days.\n', month, days);