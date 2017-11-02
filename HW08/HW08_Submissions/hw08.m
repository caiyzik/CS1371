%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Tiffany Montgomery
% T-square ID  : tmontgomery31
% GT Email     : tmontgomery31@gatech.edu
% Homework     : HW08 Original
% Course       : CS1371
% Section      : D02
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 OR
%                 "I worked on this homework with <give the names of the
%                  people you worked with>, used solutions or partial
%                  solutions provided by <name the people or other
%                  sources>, and referred to <cite any texts, web sites, or
%                  other materials not provided as course materials for CS
%                  1371.>"
%
% Files to submit:
%	ABCs_lowLevelFileIO.m    %
%	bookmateMatch.m          % 
%	drSeuss.m                %
%	greatGatsby.m            
%	hungerGames.m            %
%	hw08.m                   %
%	library.m                %
%	magicTreehouse.m         %
%	shakespeare.m
%	theBoyWhoLovedArrays.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
%% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is an m-file called "ABCs_lowLevelFileIO.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_lowLevelFileIO.m

%
% ABCs File Testing:
%	ABCs_hw08_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW08_DrillProblems.pdf",
% containing instructions for 8 drill problems that cover the
% following topic:
%
%	Low Level File I/O
%
% Follow the directions carefully to write code to complete the drill
% problems as described. Make sure file names as well as function headers
% are written exactly as described in the problem text. If your function
% headers are not written as specified, you will recieve an automatic
% zero for that problem.
%
%==========================================================================
%% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are displayed in subsequent lines.
%
%% Function Name: drSeuss
%
% Test Cases:
% [out1] = drSeuss('greenEggs&Ham.txt')
% 	out1 => Wow! Line one and two rhyme, reading this will be a great time.
% 
% [out1] = drSeuss('theLorax.txt')
% 	out1 => Wow! Line one and two rhyme, reading this will be a great time.
% 
% [out1] = drSeuss('theCatInTheHat.txt')
% 	out1 => In line one, two, or three, rhymes were not meant to be.
%
%--------------------------------------------------------------------------------
%% Function Name: library
%
% Test Cases:
% library('Goodnight Moon', 3, 2)
% 		Output text file(s) should be identical to that produced by the solution file
% 
% library('Chronicles of Narnia', 4, 1)
% 		Output text file(s) should be identical to that produced by the solution file
% 
% library('Peter Pan', 5, 3)
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: magicTreehouse
%
% Test Cases:
% [count1] = magicTreehouse('shortTest.txt', 'this', 'is')
% 	count1 =>      2     2
% 
% [count2] = magicTreehouse('mediumTest.txt', 'Fox', 'ugly')
% 	count2 =>      3     2
% 
% [count3] = magicTreehouse('longTest.txt', 'Magic', 'and')
% 	count3 =>      2    12
%
%--------------------------------------------------------------------------------
%% Function Name: bookmateMatch
%
% Test Cases:
% [out1] = bookmateMatch('CS.txt', 'MM.txt')
%isequal(bookmateMatch('CS.txt', 'MM.txt'), bookmateMatch_soln('CS.txt','MM.txt'))
% 	out1 => Bob Henderson and Cindy Silverman have a 32% bookmate compatibility score.
% 
% [out1] = bookmateMatch('SW.txt', 'CS.txt')
%isequal(bookmateMatch('CS.txt', 'SW.txt'), bookmateMatch_soln('CS.txt', 'SW.txt'))
% 	out1 => Bob Henderson and Jeremy Bones have a 70% bookmate compatibility score.
% 
 [out1] = bookmateMatch('CS.txt', 'MS.txt')
%isequal(bookmateMatch('CS.txt', 'MS.txt'), 
bookmateMatch_soln('CS.txt', 'MS.txt')
% 	out1 => Cindy Silverman and Jeremy Bones have a 32% bookmate compatibility score.
%
%--------------------------------------------------------------------------------
%% Function Name: hungerGames
%
% Test Cases:
% [out1] = hungerGames('tributes1.txt')
%isequal(hungerGames('tributes1.txt'), hungerGames_soln('tributes1.txt'))
% 	out1 => Peter is most favored to win with a score of 7!
% 
% [out2] = hungerGames('tributes2.txt')
%isequal(hungerGames('tributes2.txt'), hungerGames_soln('tributes2.txt'))
% 	out2 => Katniss Everdeen is most favored to win with a never before seen score of 11!
% 
% [out3] = hungerGames('tributes3.txt')
%isequal(hungerGames('tributes3.txt'), hungerGames_soln('tributes3.txt'))
% 	out3 => Katniss Everdeen is most favored to win with a never before seen score of 11!
%
%--------------------------------------------------------------------------------
%% Function Name: greatGatsby
%
% Test Cases:
% greatGatsby('Roarin20s_guests.txt', 'Roarin20s_arrived.txt', 10)
% 		Output text file(s) should be identical to that produced by the solution file
% 
% greatGatsby('soundtrack_guests.txt', 'soundtrack_arrived.txt', 11)
% 		Output text file(s) should be identical to that produced by the solution file
% 
% greatGatsby('underTheSea_guests.txt', 'underTheSea_arrived.txt', 10)
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: shakespeare
%
% Test Cases:
% [rhyme1] = shakespeare('roses.txt')
% 	rhyme1 => ABAC
% 
% [rhyme2] = shakespeare('limerick.txt')
% 	rhyme2 => AABBA
% 
% [rhyme3] = shakespeare('sonnet.txt')
% 	rhyme3 => ABABCDCDEFEFGG
%
%--------------------------------------------------------------------------------
%% Function Name: theBoyWhoLovedArrays
%
% Test Cases:
% theBoyWhoLovedArrays([4, 2, 8; 5, 2, 1], 'test1.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% theBoyWhoLovedArrays(7, 'test2.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% theBoyWhoLovedArrays(magic(100), 'test3.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% theBoyWhoLovedArrays([923451, 567, 18934; 4, 2, 8; 347899, 23, 1324789234], 'test4.txt')
% 		Output text file(s) should be identical to that produced by the solution file
%

%Actual Test Cases

