%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Tiffany Montgomery
% T-square ID  : tmontgomery31
% GT Email     : tmontgomery31@gatech.edu
% Homework     : HW10 resubmission
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
%	ABCs_structureArrays.m  %
%	ABCs_structures.m       %
%	animalHotel.m           %
%	hw10.m
%	predator.m              %
%	remodelZoo.m            %
%	saveTheWhales.m          
%	zooBreak.m              %
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
% Part of this homework are m-files called "ABCs_structures.m" and "ABCs_structureArrays.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_structures.m
%	ABCs_structureArrays.m
%
% ABCs File Testing:
%	ABCs_hw10_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW10_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Structures
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
%% Function Name: animalHotel
%
% % Test Cases:
% [out1]= isequal(animalHotel({'Name','Species','Origin','Food';'Jerry','Elephant','Africa','Plants';'Stanley','Snake','South America','Rodents';'Christopher','Polar Bear','Antarctica','Fish'}), animalHotel_soln({'Name','Species','Origin','Food';'Jerry','Elephant','Africa','Plants';'Stanley','Snake','South America','Rodents';'Christopher','Polar Bear','Antarctica','Fish'}))
% % [out1] = animalHotel({'Name','Species','Origin','Food';'Jerry','Elephant','Africa','Plants';'Stanley','Snake','South America','Rodents';'Christopher','Polar Bear','Antarctica','Fish'})
% %[soln] = animalHotel_soln({'Name','Species','Origin','Food';'Jerry','Elephant','Africa','Plants';'Stanley','Snake','South America','Rodents';'Christopher','Polar Bear','Antarctica','Fish'})
%  % 	out1 => Structure array should be identical to that produced by solution file
% % 
% a = {'Species','Name','Room';'Dog','Max',101;'Cat','Suzie',138;'Rat','Charlie',140};
% [out2] = isequal(animalHotel(a), animalHotel_soln(a))
% % [out1] = animalHotel({'Species','Name','Room';'Dog','Max',101;'Cat','Suzie',138;'Rat','Charlie',140})
% % 	out1 => Structure array should be identical to that produced by solution file
% % 
% b = {'Name','Species','Dream';'Marty','Zebra','Freedom';'Alex','Lion','Steak';'Gloria','Hippo','Melman';'Melman','Giraffe','Doctor'};
% [out3] = isequal(animalHotel(b), animalHotel_soln(b))
% % [out1] = animalHotel({'Name','Species','Dream';'Marty','Zebra','Freedom';'Alex','Lion','Steak';'Gloria','Hippo','Melman';'Melman','Giraffe','Doctor'})
% % 	out1 => Structure array should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: remodelZoo
%
% % Setup:
%  	load('studentZoos.mat')
% %
% % Test Cases:
%   [newZoo1] = remodelZoo(zoo1)
% %  [newZoo_soln] = remodelZoo_soln(zoo1)
%   isequal(remodelZoo(zoo1), remodelZoo_soln(zoo1))
%   isequal(remodelZoo(zoo2), remodelZoo_soln(zoo2))
%   isequal(remodelZoo(zoo3), remodelZoo_soln(zoo3))
% 	newZoo1 => Structure array should be identical to that produced by solution file
% 
% [newZoo2] = remodelZoo(zoo2)
% 	newZoo2 => Structure array should be identical to that produced by solution file
% 
% [newZoo3] = remodelZoo(zoo3)
% 	newZoo3 => Structure array should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: zooBreak
%
% Setup:
% load('cityMaps.mat')
%
% % Test Cases:
%  [newMap1, dist1] = zooBreak(map1, 'lion')
%  [newMap_soln, soln_dist] = zooBreak_soln(map1, 'lion')
%  isequal(zooBreak(map1, 'lion'), zooBreak_soln(map1, 'lion'))
% % 	newMap1 => Structure array should be identical to that produced by solution file
% % 	dist1 =>            1.4142135623731
% % 
% % [newMap2, dist2] = zooBreak(map2, 'giraffe')
%  isequal(zooBreak(map2, 'giraffe'), zooBreak_soln(map2, 'giraffe'))
% % 	newMap2 => Structure array should be identical to that produced by solution file
% % 	dist2 =>      1
% % 
% % [newMap3, dist3] = zooBreak(map3, 'lemur')
%  isequal(zooBreak(map3, 'lemur'), zooBreak_soln(map3, 'lemur'))
% % 	newMap3 => Structure array should be identical to that produced by solution file
% % 	dist3 =>           3.16227766016838
%
%--------------------------------------------------------------------------------
%% Function Name: saveTheWhales
%
% Setup:
  load('testCases_student.mat')
  isequal(saveTheWhales(ST1), saveTheWhales_soln(ST1))
  isequal(saveTheWhales(ST2), saveTheWhales_soln(ST2))
  isequal(saveTheWhales(ST3), saveTheWhales_soln(ST3))
% %
% % Test Cases:
  [newStruct1_soln] = saveTheWhales_soln(ST1)
  [newStruct1] = saveTheWhales_soln(ST1)
% % 	newStruct1 =>  
%     A: 1
%     B: 2
%     D: 4
%     E: 5
%     H: 8
%     I: 9
%     C: 3
%     F: 6
%     G: 7
% 
 [newStruct2] = saveTheWhales(ST2)
 [newStruct2_soln] = saveTheWhales_soln(ST2)
% 	newStruct2 =>  
%     D: 4    
%     E: 5    
%     H: 8    
%     I: 9    
%     K: 13   
%     O: 20   
%     F: 6    
%     G: 7    
%     J: 11   
%     L: 14.75
%     M: 16.5 
%     N: 18.25
% 
% [newStruct3] = saveTheWhales(ST3)
% 	newStruct3 =>  
%     C: 4
%     G: 0
%     K: 4
%     N: 7
%     D: 3
%     E: 2
%     F: 1
%     H: 1
%     I: 2
%     J: 3
%     L: 5
%     M: 6
%
%--------------------------------------------------------------------------------
%% Function Name: predator
%
% Setup:
%   load('predatorStudentCases.mat') 
% % % %
%  isequal(predator(animals1, events1), predator_soln(animals1, events1))
%  isequal(predator(animals2, events2), predator_soln(animals2, events2))
%  isequal(predator(animals3, events3), predator_soln(animals3, events3))
% % % % Test Cases:
%   [res1] = predator(animals1, events1)
% % 	res1 => 3 animals survived 3 grueling months.
% % 
%  [res2] = predator(animals2, events2)
% % 	res2 => 5 months were too much for the animals, and none of them survived.
% % 
%  [res3] = predator(animals3, events3)
% % 	res3 => After 7 months of observation, only Harry, a Western Lowland Gorilla, survived.
% %
