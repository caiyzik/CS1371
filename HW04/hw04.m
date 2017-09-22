%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Tiffany Montgomery
% T-square ID  : tmontgomery31
% GT Email     : tmontgomery31@gatech.edu
% Homework     : HW04 resubmission
% Course       : CS1371
% Section      : D02
% Collaboration: <place here one of the following:
%           
%                 "I worked on this homework with Stephen Hamiliton." 
                    
%
% Files to submit:
%	ABCs_logicals.m
%	criminalMinds.m
%	hw04.m
%	lockSMITH.m
%	passwordProtec.m
%	superheroCrisis.m
%	suspects.m
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
% Part of this homework is an m-file called "ABCs_logicals.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_logicals.m

%
% ABCs File Testing:
%	ABCs_hw04_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW04_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Logicals
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
%% Function Name: passwordProtec
%
%fprintf('passwordProtec');
% Test Cases:
%isequal(passwordProtec('friendOrfoe?'), passwordProtec_soln('friendOrfoe?'))
% 	out1 =>    0
% 
%isequal(passwordProtec('foe'), passwordProtec_soln('foe'))
% 	out1 =>    0
% 
%isequal(passwordProtec('protecM3Friend!!'), passwordProtec_soln('protecM3Friend!!'))
% 	out1 =>    1
%
%--------------------------------------------------------------------------------
%% Function Name: suspects
%
%fprintf('suspects')
% Test Cases:
isequal(suspects('HH TA PK ZT ', [true true true false]), suspects_soln('HH TA PK ZT ', [true true true false]))
%correct = double(suspects_soln('HH TA PK ZT ', [true true true false]))
% 	mistaken1 => ZT 
% 	positions1 =>      1     2     3
% 
% [mistaken2, positions2] = suspects('ND WF RW OT EF HT MA ', [true true false false false false true])
isequal(suspects('ND WF RW OT EF HT MA ', [true true false false false false true]), suspects_soln('ND WF RW OT EF HT MA ', [true true false false false false true]))
% 	mistaken2 => EF HT OT RW 
% 	positions2 =>      1     2     7
% 
% [mistaken3, positions3] = suspects('RI LG YK PH AS AR BT FG AM HB IG JT KG BE MV HG ON PG ', [false true true false true false true true false true true true true false true true true true])
isequal(suspects('RI LG YK PH AS AR BT FG AM HB IG JT KG BE MV HG ON PG ', [false true true false true false true true false true true true true false true true true true]), suspects_soln('RI LG YK PH AS AR BT FG AM HB IG JT KG BE MV HG ON PG ', [false true true false true false true true false true true true true false true true true true]))
% 	mistaken3 => AR AM BE PH RI 
% 	positions3 =>      2     3     5     7     8    10    11    12    13    15    16    17    18
%
%--------------------------------------------------------------------------------
%% Function Name: lockSMITH
%
%fprintf('lockSMITH')
% Test Cases:
%isequal(lockSMITH([17 34 12 13 71 21 61 2], [6 3 -15 4 -7], [true false true false true]), lockSMITH_soln([17 34 12 13 71 21 61 2], [6 3 -15 4 -7], [true false true false true]))
% 	combination1 =>     21    34    61
% 
% [combination2] = lockSMITH([39 72 15 93 24 77], [2, 18, 4, -12, 9], [true false true true true])
%isequal(lockSMITH([39 72 15 93 24 77], [2, 18, 4, -12, 9], [true false true true true]), lockSMITH_soln([39 72 15 93 24 77], [2, 18, 4, -12, 9], [true false true true true]))
% 	combination2 =>     72    77    77    15
% 
%isequal(lockSMITH([61 24 48 43 35 85 49 23 24 11 20], [7 -3 9 3 -5], [false false true false true]), lockSMITH([61 24 48 43 35 85 49 23 24 11 20], [7 -3 9 3 -5], [false false true false true]))
% 	combination3 =>     24    20
%
%--------------------------------------------------------------------------------
%% Function Name: superheroCrisis
%
%fprintf('superheroCrisis')
% Test Cases:
%isequal(superheroCrisis([5,8,10,13,22], [20,10,6,12,2], [35,35,35,35]), superheroCrisis_soln([5,8,10,13,22], [20,10,6,12,2], [35,35,35,35]))
% 	city1 => D
% 	win1 =>    0
% 
%isequal(superheroCrisis([10,4,12,32,39], [3,7,10,23,10], [4,52,108]), superheroCrisis([10,4,12,32,39], [3,7,10,23,10], [4,52,108]))
% 	city2 => N
% 	win2 =>    1
% 
%isequal(superheroCrisis([24,25,1,25,25], [1,15,2,4,6], [17,70,6,30,40]), superheroCrisis_soln([24,25,1,25,25], [1,15,2,4,6], [17,70,6,30,40]))
% 	city3 => W
% 	win3 =>    1
%
%--------------------------------------------------------------------------------
%% Function Name: criminalMinds
%
%fprintf('criminalMinds')
% Test Cases:
%A = [true true false true], [true false false true], [true true false true], [true true false true];
 %isequal(criminalMinds([true true false true], [true false false true], [true true false true], [true true false true]), criminalMinds_soln([true true false true], [true false false true], [true true false true], [true true false true]))
% 	suspectNumber1 => Suspect #2 is lying.
%
%B = [true false false], [true false true], [true false true], [true false true];
%isequal(criminalMinds([true false false], [true false true], [true false true], [true false true]), criminalMinds_soln([true false false], [true false true], [true false true], [true false true]))
% 	suspectNumber2 => Suspect #1 is lying.
% 
%C = [false false false false false], [false false false false false], [false false false false false], [false true false false false];
%isequal(criminalMinds([false false false false false], [false false false false false], [false false false false false], [false true false false false]), criminalMinds_soln([false false false false false], [false false false false false], [false false false false false], [false true false false false]))
% 	suspectNumber3 => Suspect #4 is lying.
% 
%D = [true true], [false false], [true true], [true true];
%isequal(criminalMinds([true true], [false false], [true true], [true true]), criminalMinds_soln([true true], [false false], [true true], [true true]))
% 	suspectNumber4 => Suspect #2 is lying.
%
