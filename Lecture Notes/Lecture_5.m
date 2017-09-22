
%%%
% File: Lect_05_Vectors.m
%%%
%  ADMIN
%
%   We will be starting PRS next Wed
%	- apps OK
%	- white boxes OK
%	- register your device on T-Square
%
% CONCEPT:
%    Data Abstraction
%
clear
clc
% IMPLEMENTATION
%    MATLAB vectors
%	- creating vectors
% 8 ways to do this: colon operator (forwards and backwards), concatenation, linspace(), rand(),
% randn(), zeros, ones()
A = 3:2:16
B = round(linspace(3, 16, 7))
%	- math operations - rules: both vectors need to be the same size or one
%	of them need to be one by one
C = A + B
%   - numerical indexing
first_five = B(1:5)
%   - lengthening (concatenation)
E = [A B]
%   - shortening (inserting [])
D = C([1:2 4:end])
%   - lengthening (indexing)
%   - shortening (indexing)
%	- transposing
A' %flips the rows and columns
%   - interesting functions
%   - - length- returns the amount of elements in a vector  
ln = length(A)
%   - - sum - cumulative sum of all elements in the vector
total = sum(B) 
%   - - prod - product of all elements in the vector
mult = prod(B)
%creating random vectors within specific bounds
G = round((rand(1,7) - 0.5) .* 100) %creates random vector between -50 and 50
%   - - max
[val, where] = max(G); %val = value of the maximum value; where = the index of the maximum value
%   - - min
[val, where] = min(G);
%   - - sort
[vals, order] = sort(G)
%	- - mod
%with mod() all remainders will be positive unlike rem(), where you can have negative remainders 
H = mod(G,3)
%
%	EXAMPLES
%
%	- the values at odd indices in a vector
atOdds = G(1:2:end)
%	- counting the odd numbers in a vector
numOdds = sum(mod(G,2))
%	- counting the even numbers in a vector
%	- intersect a line with a circle
%
% CLEANUP
%    Slicing: copying a chunk from one vector into another
%    In general, can say:
%               A(<A_indices>) = B(<B_Indices>)
%       A_Indices can be a vector of any length 
%                        with values of any positive number(s) 
%       B_Indices can be a vector of any length 
%                        with values between 1 and length(B) 
%       The length of B_Indices must either be the length of A_indices
%                                    or 1

%lecture script

a = 3;
b = -2;
c = 2;
r = 2;
A = 1 + a.^2./(b.^2);
B = -2.*a.*c./(b.^2);
C = c.^2./(b.^2) - r.^2;
[x1 x2] = my_roots(A, B, C)
th = linspace(0, 2*pi, 100);
plot(r.*cos(th), r.*sin(th))
axis equal
hold on
y1 = (c - a.*x1)./b;
y2 = (c - a.*x2)./b;
plot(x1, y1, 'r+')
plot(x2, y2, 'go')