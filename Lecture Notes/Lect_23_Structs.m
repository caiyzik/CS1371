%%%
% File: Lect_23_Structures.m
%%%
%
%   CONCEPT
%   - naming data "rows"
%
%%%
%
%   IMPLEMENTATION
%   - struct
%
clear
clc
%%%
%
%   EXAMPLES
%   - building "manually"
%     - Fred Jones
fred.first = 'Fred';
fred.last = 'Jones';
fred.grad = false;
date.day = 30;
date.month = 'Feb';
date.year = 1986;
%   - copying
%     - Sally Jones
sally = fred;
sally.first = 'Sally';
sally.birth.day = 31

%   - concatenation
%     - Jones family
jones = [fred sally];
out = fopen('output.txt','w');
showit(out, 'family', jones)
%   - build using struct
%     - triplets
