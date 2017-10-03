%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Tiffany Montgomery
% T-square ID  : trmontgomery31
% GT Email     : tmontgomery31@gatech.edu
% Homework     : HW06 original
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
%	ABCs_conditionals.m  %
%	earthWindFire.m      %
%	findMyJam.m          %
%	highSchoolMusical.m  %
%	hw06.m
%	musicalYahtzee.m
%	wakeMeUp.m           %
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
% Part of this homework is an m-file called "ABCs_conditionals.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_conditionals.m

%
% ABCs File Testing:
%	ABCs_hw06_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW06_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Conditionals
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
%% Function Name: earthWindFire
%
% Test Cases:
 %[out1] = earthWindFire('earth', 'wind')
%isequal(earthWindFire('earth', 'wind'), earthWindFire_soln('earth', 'wind'))
% 	out1 => Player 1 wins!
% 
 %[out2] = earthWindFire('fire', 'wind')
%isequal(earthWindFire('fire', 'wind'), earthWindFire_soln('fire', 'wind'))
% 	out2 => Player 2 wins!
% 
 %[out3] = earthWindFire('fire', 'earth')
%isequal(earthWindFire('fire', 'earth'), earthWindFire_soln('fire', 'earth'))
% 	out3 => Player 1 wins!
% 
 %[out4] = earthWindFire('fire', 'fire')
%isequal(earthWindFire('fire', 'fire'), earthWindFire_soln('fire', 'fire'))
% 	out4 => It's a tie!
%
%--------------------------------------------------------------------------------
%% Function Name: wakeMeUp
%
% Test Cases:
% [out1] = wakeMeUp('09:00', '08:00', 'walking')
%isequal(wakeMeUp('09:00', '08:00', 'walking'), wakeMeUp_soln('09:00', '08:00', 'walking'))
% 	out1 => You overslept and missed your first class. Better set your alarm next time!
% 
% [out2] = wakeMeUp('09:15', '09:30', 'skateboarding')
%isequal(wakeMeUp('09:15', '09:30', 'skateboarding'), wakeMeUp_soln('09:15', '09:30', 'skateboarding'))
% 	out2 => You rush and make it to class just in time by skateboarding. Nice!
% 
% [out3] = wakeMeUp('07:55', '08:00', 'stinger bus')
%isequal(wakeMeUp('07:55', '08:00', 'stinger bus'), wakeMeUp_soln('07:55', '08:00', 'stinger bus'))
% 	out3 => You rush to get to class by stinger bus, but sadly you are still late. Better set your alarm next time!
%
%--------------------------------------------------------------------------------
%% Function Name: highSchoolMusical
%
% Test Cases:
% [decision1] = highSchoolMusical('GT', [10,10,10], 'Photograph- Nickelback', false)
%isequal(highSchoolMusical('GT', [10,10,10], 'Photograph- Nickelback', false), highSchoolMusical_soln('GT', [10,10,10], 'Photograph- Nickelback', false))
% 	decision1 => We regret to inform you that you did not make the musical.
% 
% [decision2] = highSchoolMusical('U of A', [7,7,7], 'Look What You Made Me Do', false)
%isequal(highSchoolMusical('U of A', [7,7,7], 'Look What You Made Me Do', false), highSchoolMusical_soln('U of A', [7,7,7], 'Look What You Made Me Do', false))
% 	decision2 => Welcome to High School Musical!
% 
% [decision3] = highSchoolMusical('NYU', [0,0,0], 'start of something new', true)
%isequal(highSchoolMusical('NYU', [0,0,0], 'start of something new', true), highSchoolMusical_soln('NYU', [0,0,0], 'start of something new', true))
% 	decision3 => Welcome to High School Musical!
%
%--------------------------------------------------------------------------------
%% Function Name: findMyJam
%
% Setup:
%	load jamCases.mat
load('jamCases.mat')
% options1
% friends1
% spotify1
% stats1
% Test Cases:
% [decision1] = findMyJam(options1, friends1, spotify1, stats1)
isequal(findMyJam(options1, friends1, spotify1, stats1), findMyJam_soln(options1, friends1, spotify1, stats1))
% 	decision1 => Radiohead will ignite the party!
% 
% [decision2] = findMyJam(options2, friends2, spotify2, stats2)
isequal(findMyJam(options2, friends2, spotify2, stats2), findMyJam_soln(options2, friends2, spotify2, stats2))
% 	decision2 => Kanye West will ignite the party!
% 
% [decision3] = findMyJam(options3, friends3, spotify3, stats3)
isequal(findMyJam(options3, friends3, spotify3, stats3), findMyJam_soln(options3, friends3, spotify3, stats3))
% 	decision3 => Drake will ignite the party!
% 
% [decision4] = findMyJam(options4, friends4, spotify4, stats4)
isequal(findMyJam(options4, friends4, spotify4, stats4), findMyJam_soln(options4, friends4, spotify4, stats4))
% 	decision4 => Phoenix will ignite the party!
%
%--------------------------------------------------------------------------------
%% Function Name: musicalYahtzee
%
% Test Cases:
% [out1, out2] = musicalYahtzee('eighth sixteenth quarter half thirty-second')
%a = 'eighth sixteenth quarter half thirty-second';
%isequal(musicalYahtzee(a), musicalYahtzee_soln(a))
% 	out1 =>     40
% 	out2 => I have a Large Straight!
% 
% [out1, out2] = musicalYahtzee('quarter quarter quarter quarter quarter')
%isequal(musicalYahtzee('quarter quarter quarter quarter quarter'), musicalYahtzee_soln('quarter quarter quarter quarter quarter'))
% 	out1 =>     50
% 	out2 => HOORAY! MUSICAL YAHTZEE!
% 
% [out1, out2] = musicalYahtzee('whole half whole half whole')
%isequal(musicalYahtzee('whole half whole half whole'), musicalYahtzee_soln('whole half whole half whole'))
% 	out1 =>     28
% 	out2 => I have a 3 of a Kind!
%
