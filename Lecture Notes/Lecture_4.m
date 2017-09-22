%%%
% File: Lect_04_Vectors.m
%%%
%  ADMIN
%
%   PRS alias 'clicker'
%   We will be using the Personal Response System (aka Clicker) to test our
%   conceptual knowledge during class. We will run tests to see if the
%   system can handle the responses before grading the clicker questions
%
% CONCEPT:
%    Data Abstraction
%    Arrays (multi-dimensional collections of type double)
%    Important subset:
%       1 dimensional collection
%       used for accessing arrays
clear
clc

% IMPLEMENTATION
%    MATLAB vectors
%     array with 1 row, N column 
%Vectors have two properties: 
%   - elements (the values inside the vector)
%   - length (the amount of elements the vector can hold--this is a
%   different value from the amount of elements inside of the vector at a
%   given time
% element properties: 
%   - value
%   - position or index. indexing starts at 1 (instead of zero like other programming languages)
%if you call the length() function on a vector it will return the total elements inside of the vector
%call length on array you will get the total elements the array can hold

%	 - ways to create vectors 
A = [3 NaN 3 42 12 17 -11] % concatenation-- adding all the elements together
B = 1:7.2  % colon operator-- inputs start:step:end -- reutrns a vector of INTEGERS 1 through 7
C = 10:-3:-9 %can also go backwards
D = round(linspace(4, 13, 7)) %linspace inputs (start, end, step)
E = zeros(1, 7)
F = ones(1, 7)
G = rand(1, 7)
H = randn(1, 7)

%	 - numerical indexing 
%       - specifying specific elements in a vector
%       - (use round brackets for indexing)
it = D(4) %returns the fourth element of vector D
A(2) = 0 %assigns the second element of A the value 0
A(11) = 99
% what are the even values in A?
index = 2:2:length(A) %returns a vector of the INDEXES of every other value of A
evens = A(index) %returns every other value of A
also = A(2:2:end) %this is a much cleaner way to produce the same vector as evens
longer = [A B C] %concatenates vectors A, B, and C together

%    - shortening vectors
keep = [1:4 6:length(D)] %create an index of values you want to keep from vector D
nice = D(keep) %saves values from D
nicer = D([1:4 6:end]) %again, here is a nicer way to write the code above
D(5) = []   %makes the vectors D shorter AND changes the original data (no copying)
            %better to specify the values you want to keep and make another vector
           
%	 - passing to functions
sb = sin(B) %returns the sine of the elements of in B

%	 - mathematical operations
twice = A.*2 %multipy the vectors in A by two 
add = A + B % add the elements from A + B
subtract = C - D %subtract elements from C and D
