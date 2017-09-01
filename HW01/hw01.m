%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Tiffany Renee Montgomery
% T-square ID  : tmontgomery31
% GT Email     : tmontgomery31@gatech.edu
% Homework     : HW1/original submission
% Course       : CS1371
% Section      : D02
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%            
%
% Files to submit:
%	ABCs_functions.m
%	ABCs_homeworkOverview.m
%	compound.m
%	hw01.m
%	inscribe.m
%	pizzaParty.m
%	pythag.m
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
% Part of this homework are m-files called "ABCs_homeworkOverview.m" and "ABCs_functions.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_homeworkOverview.m
%	ABCs_functions.m
%
% ABCs File Testing:
%	ABCs_hw01_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW01_DrillProblems.pdf",
% containing instructions for 4 drill problems that cover the
% following topic:
%
%	Basics
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
%% Function Name: pythag
%
% Test Cases:
%[c1] = pythag(3, 4);
%isequal(c1,5)
% 
%[c2] = pythag(5, 5);
%isequal(c2, 7.07) 	                  
% 
%[c3] = pythag(16, 25);
%isequal(c3, 29.68)
%
%--------------------------------------------------------------------------------
%% Function Name: inscribe
%
% Test Cases:
%[area1] = inscribe(3);
%isequal(area1, 1.93)
% 
%[area2] = inscribe(5);
%isequal(area2, 5.37)
% 
%[area3] = inscribe(15);
%isequal(area3, 48.29)
%
%--------------------------------------------------------------------------------
%% Function Name: compound
%
% Test Cases:
%[years1] = compound(100, 50, 0.02, 1);
%isequal(years1, 36)
% 
%[years2] = compound(1500, 100, 0.05, 4);
%isequal(years2, 55)
% 
%[years3] = compound(1000000, 1, 0.03, 5);
%isequal(years3, 462)
%
%--------------------------------------------------------------------------------
%% Function Name: pizzaParty
%
% Test Cases:
%[out1 out2] = pizzaParty(15, 3);
%isequal(out1, 1)
%isequal(out2, 9)
% 
%[out1, out2] = pizzaParty(100, 25);
%isequal(out1, 2)
%isequal(out2, 0)
% 
%[out1, out2] = pizzaParty(1, 2);
%isequal(out1, 16)
%isequal(out2, 0)
%
