%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Tiffany Montgomery
% T-square ID  : tmontgomery31
% GT Email     : tmontgomery31@gatech.edu
% Homework     : HW09
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
%	ABCs_cellArrays.m       %
%	ABCs_highLevelFileIO.m  %
%	celery.m                %
%	celeryComp.m
%	countCelery.m           %
%	hw09.m
%	nationalCelery.m        %
%	sellery.m               %
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
% Part of this homework are m-files called "ABCs_highLevelFileIO.m" and "ABCs_cellArrays.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_highLevelFileIO.m
%	ABCs_cellArrays.m
%
% ABCs File Testing:
%	ABCs_hw09_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW09_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	High Level File I/O
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
%% Function Name: sellery
%
% Test Cases:
% isequal(sellery('Stands1.xlsx'), sellery_soln('Stands1.xlsx'))
% isequal(sellery('Stands2.xlsx'), sellery_soln('Stands2.xlsx'))
% isequal(sellery('Stands3.xlsx'), sellery_soln('Stands3.xlsx'))
% [out1] = sellery('Stands1.xlsx')
% 	out1 => You made a profit of $6.00!
% 
% [out2] = sellery('Stands2.xlsx')
% 	out2 => You are $19.00 in debt!
% 
% [out3] = sellery('Stands3.xlsx')
% 	out3 => You are $138.00 in debt!
%
%--------------------------------------------------------------------------------
%% Function Name: celery
%
% isequal(celery({'David' 'Ranch' [1 2]; 'Kantwon' 'Peanut Butter' [2 1]}), celery_soln({'David' 'Ranch' [1 2]; 'Kantwon' 'Peanut Butter' [2 1]}))
% isequal(celery({'Lobo' 'Hummus' [1 3 2] ; 'Zach' 'Ketchup' [1 2 3]; 'Tim' 'Salsa' [2 1 3]}), celery_soln({'Lobo' 'Hummus' [1 3 2] ; 'Zach' 'Ketchup' [1 2 3]; 'Tim' 'Salsa' [2 1 3]}))
% isequal(celery({'Tiffany' 'Baba Ghanoush' [1 2 3 4 5] ; 'Eric' 'Ranch' [5 4 3 2 1]; 'Jr' 'Mustard' [1 4 3 2 5]; 'Ivanka' 'Guac' [3 2 1 4 5]; 'Barron' 'PB' [3 4 2 1 5]}), celery_soln({'Tiffany' 'Baba Ghanoush' [1 2 3 4 5] ; 'Eric' 'Ranch' [5 4 3 2 1]; 'Jr' 'Mustard' [1 4 3 2 5]; 'Ivanka' 'Guac' [3 2 1 4 5]; 'Barron' 'PB' [3 4 2 1 5]}))
% % Test Cases:
%[out1] = celery({'David' 'Ranch' [1 2]; 'Kantwon' 'Peanut Butter' [2 1]})
%[out2] = celery_soln({'David' 'Ranch' [1 2]; 'Kantwon' 'Peanut Butter' [2 1]})
% 	out1 =>  
%     'David'      'Ranch'        
%     'Kantwon'    'Peanut Butter'
% 
% [out2] = celery({'Lobo' 'Hummus' [1 3 2] ; 'Zach' 'Ketchup' [1 2 3]; 'Tim' 'Salsa' [2 1 3]})
% 	out2 =>  
%     'Lobo'    'Hummus' 
%     'Zach'    'Hummus' 
%     'Tim'     'Ketchup'
% 
%[out3] = celery({'Tiffany' 'Baba Ghanoush' [1 2 3 4 5] ; 'Eric' 'Ranch' [5 4 3 2 1]; 'Jr' 'Mustard' [1 4 3 2 5]; 'Ivanka' 'Guac' [3 2 1 4 5]; 'Barron' 'PB' [3 4 2 1 5]})
%[out4] = celery_soln({'Tiffany' 'Baba Ghanoush' [1 2 3 4 5] ; 'Eric' 'Ranch' [5 4 3 2 1]; 'Jr' 'Mustard' [1 4 3 2 5]; 'Ivanka' 'Guac' [3 2 1 4 5]; 'Barron' 'PB' [3 4 2 1 5]})
 % 	out3 =>  
%     'Tiffany'    'Baba Ghanoush'
%     'Eric'       'PB'           
%     'Jr'         'Baba Ghanoush'
%     'Ivanka'     'Mustard'      
%     'Barron'     'Guac'         
%
%--------------------------------------------------------------------------------
%% Function Name: nationalCelery
%
% Setup:
%load('declaration.mat')
%
% Test Cases:
% [out1] = nationalCelery(file1, declarationOfCelery)
% 	out1 => Nicolas Cage is the best
% 
% [out2] = nationalCelery(file2, declarationOfCelery)
% 	out2 => If a man does not have the celery then he is lost. But the same man can be lost in the celery.
% 
% [out3] = nationalCelery(file3, declarationOfCelery)
% 	out3 => To celery, or not to celery: that is the question. The answer is to celery, of course.
%
%--------------------------------------------------------------------------------
%% Function Name: celeryComp
%
% Setup:
% load('celeryCompTest.mat')
% %
% % Test Cases:
% % [finalBracket1] = celeryComp(file1, test1)
%  isequal(celeryComp(file1, test1), celeryComp_soln(file1, test1))
%  isequal(celeryComp(file2, test2), celeryComp_soln(file2, test2))
%  isequal(celeryComp(file3, test3), celeryComp_soln(file3, test3))
% 	finalBracket1 =>  
%   Columns 1 through 2                   
%     'Celery Fritata'    'Celery Fritata'
%     'Celery Soup'       'Celery Bake'   
%     'Celery Bake'       'Celery Soda'   
%     'Celery Pasta'      'Celery Milk'   
%     'Celery Bread'                    []
%     'Celery Soda'                     []
%     'Celery Panini'                   []
%     'Celery Milk'                     []
%   Columns 3 through 4                   
%     'Celery Fritata'    'Celery Fritata'
%     'Celery Milk'                     []
%                   []                  []
%                   []                  []
%                   []                  []
%                   []                  []
%                   []                  []
%                   []                  []
% 
% [finalBracket2] = celeryComp(file2, test2)
% 	finalBracket2 => Value too large to display. Value should match that of the solution function.
% 
% [finalBracket3] = celeryComp(file3, test3)
% 	finalBracket3 => Value too large to display. Value should match that of the solution function.
%
%--------------------------------------------------------------------------------
%% Function Name: countCelery
%
% Test Cases:
%
%isequal(countCelery('twinkle.txt'), countCelery_soln('twinkle.txt'))
% [cellarr1, cel1] = countCelery('twinkle.txt')
% 	cellarr1 =>  
%   Columns 1 through 5                            
%     'are'    'celery'    'how'    'i'    'little'
%     [  1]    [     1]    [  1]    [1]    [     1]
%   Columns 6 through 9                            
%     'twinkle'    'what'    'wonder'    'you'     
%     [      2]    [   1]    [     1]    [  1]     
% 	cel1 =>      1
% 
% [cellarr2, cel2] = countCelery('Hooked_on_a_Feeling.txt')
% 	cellarr2 => Value too large to display. Value should match that of the solution function.
% 	cel2 =>      0
%isequal(countCelery('Hooked_on_a_Feeling.txt'), countCelery_soln('Hooked_on_a_Feeling.txt'))
% [cellarr3, cel3] = countCelery('The_Sorcerers_Stone.txt')
% 	cellarr3 => Value too large to display. Value should match that of the solution function.
% 	cel3 =>      3
%countCelery('Hooked_on_a_Feeling.txt')
%countCelery_soln('Hooked_on_a_Feeling.txt')
%isequal(countCelery('The_Sorcerers_Stone.txt'), countCelery_soln('The_Sorcerers_Stone.txt'))
