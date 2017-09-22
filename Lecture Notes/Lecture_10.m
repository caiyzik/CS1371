%%%
% File: Lect_10_Arrays.m
%%%
%
%   ADMIN 
%       test in 2 weeks
%       extra help session start Monday
%
%   PRS Research Project
%       - 
%
%   CONCEPT
%     -  arrays - two-dimensional vectors
%
clear
clc
close all
%
%%%
%   Constructing
%   Concatenation 
A = [1 2 3 4; 5 6 7 8] %before and after are rows
B = [7 5 5 4
    3 2 1 0]
C = [A B]
D = [A
    B] %this works because A and B have the same number of columns
B(3,6) = 99
% D = [A;B] will no longer work because the columns of B have changed. 
%Try this
D = [A
    B(1:end, 1:4)]
%       not : or linspace (these only create vectors, but they can be useful for acessing info from arrays)
Z = zeros(5,6) %(rows, colums)
%       add magic(...)
%   row/column indexing
%  length / size
length(A)
[rows cols] = size(A)
size(B)
%   effect on min, max etc.
R = round(rand(3,5).*100)
%   find the min or max in an array
[vals where] = max(R)
max(max(R))
%   validate magic square
m = magic(7)
m(6,2) = m(6,2) + 100
colSum = sum(m)
%to find the sum of the rows take the sum of the transpose
rowSum = sum(m')'
majDsum = sum(diag(m))
minDSum = sum(diag(m(:, end:-1:1))) %the other diagonal
m > 40
%   find()
find(m > 40)
m(15)
%   stretch limo
car = imread('GrayVolta.jpg');
imshow(car)
%   slicing arrays
[rows cols] = size(car)
scale = 2.5;
colNdx = linspace(1, cols, cols .* scale)
imshow(car(:, colNdx))
