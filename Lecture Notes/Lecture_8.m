%%%
% File: Lect_08_Logical_Vectors.m
%%%
%  ADMIN
%
%       Note about what to learn:
%       -------------------------
%       We are trying to teach you problem solving
%       - Never try to memorize code written for you in class, recitation or
%       help desk
%       - What you need to know is the basic tools and how to apply them
%       to solve problems
%
% CONCEPT:
%    logical variable
       % - be careful! Do not mistake logical values for numbers (0 - false, 1 - true)
%
%
%%%
% IMPLEMENTATION
%   - vectors (double or char)
%   - indexing - selecting 0 or more values from a vector
%   - so far, our indices have been specified as vectors, but ...
%   - logical constants:  true, false
%   - displaying logical results 
%   should be displayed as 'true' or 'false'
%   actually displayed as '1' or '0' (sigh!)
%	- indexing with logicals 
str = 'the quick brown fox jumped over the loopy dog';
it = (str == 'e') | (str == 'o') %shows you where all the 'e's and 'o's are
it = find(it) %fidn tells you the index of the true values of the vector
str(it)
%   -- think about the find() function
%       rules: A(<A_logical_index>) = B(<B_logical_index>)
%       <A_logical_index> values: true false
%                         length: anything
%       <B_logical_index> values: true false
%                         length: any but all vals beyond B must be false
%
%   - operations on logicals:  and: &, or: |, not: ~
%   - math operations with logical results
%   -   >, >=, <, <=, == (equal to), ~= (not equal to)
%	- find() function
%  returns a list of the positions in the logical vector
%  of the true values
%	- indexing with logicals 
%	- any() take single logical vector as an input (gives true if any value is true)
%	- all() (gives true if all values are true)

%
%	EXAMPLES
%	- vectors - "get odd elements" - 2 meanings
%  1. get the values at odd indices
vec = round(rand(1,8).*100 - 30) 
oddPos = vec(1:2:end)
%  2. get the elements in A that have odd values
it = mod(vec,2)
%vec(it) %this will give you a error because the vector returned is of
%numbers not logicals
it = mod(vec,2) == 1
them = vec(it)
%  recall: mod(7,2)
%   - capitalizing every word
stra = str;
strb = str;
%  we need to capitalize the first letter of every word:
%  the letter after the space
cap = [1, (find(stra == ' ') + 1) ]
stra(cap) = stra(cap) + 'A' - 'a'

sp = [true, strb == ' '];
strb(sp) = strb(sp) + 'A' - 'a'
%   - verify that all 26 letters were used by "the quick ..."
% 1. get rid of everything that is not lower case alpha
% 2. sort them
% where is it bad?
% we could actually be missing a and z
% because we're not testing for them.  Fix that.

