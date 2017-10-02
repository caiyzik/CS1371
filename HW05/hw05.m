%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Tiffany Montgomery
% T-square ID  : tmontgomery31
% GT Email     : tmontgomery31@gatech.edu
% Homework     : HW05 Original 
% Course       : CS1371
% Section      : D02
% Collaboration: 
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                
%
% Files to submit:
%	ABCs_arrays.m     %
%	ABCs_masking.m    %
%	castCharm.m       %
%	hippogriffCase.m  
%	hw05.m
%	puzzleBox.m
%	quibbler.m        %
%	sortingSquare.m   %
%	spellCheck.m      %
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
% Part of this homework are m-files called "ABCs_arrays.m" and "ABCs_masking.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_arrays.m
%	ABCs_masking.m
%
% ABCs File Testing:
%	ABCs_hw05_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW05_DrillProblems.pdf",
% containing instructions for 6 drill problems that cover the
% following topic:
%
%	Arrays and Masking
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
%% Function Name: castCharm
%
% Test Cases:
% [out1] = castCharm([1, 3; 2 1], [7, 8; 2, 6], 1)
%isequal(castCharm([1, 3; 2 1], [7, 8; 2, 6], 1), castCharm_soln([1, 3; 2 1], [7, 8; 2, 6], 1))
% 	out1 =>  
%     13     3
%      2    13
% 
% [out2] = castCharm([3, 3, 5; 3, 0, 3], [0, 0, 0; 0, 0, 0], 3)
%isequal(castCharm([3, 3, 5; 3, 0, 3], [0, 0, 0; 0, 0, 0], 3), castCharm_soln([3, 3, 5; 3, 0, 3], [0, 0, 0; 0, 0, 0], 3))
% 	out2 =>  
%      0     0     5
%      0     0     0
% 
% [out3] = castCharm([10, 11; 45, 10; 12, 0], [7, 6; 8, 10; 3, 5], 4)
%isequal(castCharm([10, 11; 45, 10; 12, 0], [7, 6; 8, 10; 3, 5], 4), castCharm_soln([10, 11; 45, 10; 12, 0], [7, 6; 8, 10; 3, 5], 4))
% 	out3 =>  
%     10    11
%     45    10
%     12     0
%
%--------------------------------------------------------------------------------
%% Function Name: quibbler
%
% Setup:
%	load puzzles.mat
load('puzzles.mat')
% Test Cases:
% [out1] = quibbler('owl', puzzle1)
%isequal(quibbler('owl', puzzle1), quibbler_soln('owl', puzzle1))
% 	out1 =>  
% a#x
% b#y
% c#z
% 
% [out2] = quibbler('ron', puzzle2)
%isequal(quibbler('ron', puzzle2), quibbler_soln('ron', puzzle2))
% 	out2 =>  
% bnkd
% mncp
% dknc
% pzas
% 
% [out3] = quibbler('harry', puzzle3)
%isequal(quibbler('harry', puzzle3), quibbler_soln('harry', puzzle3))
% 	out3 =>  
% nmhzy
% plauq
% #####
% mntre
% gzytt
%
%--------------------------------------------------------------------------------
%% Function Name: sortingSquare
%
% Setup:
%	load studentTest.mat
load('studentTest.mat')
% Test Cases:
% [new1] = sortingSquare(students1, 1)
%isequal(sortingSquare(students1, 1), sortingSquare(students1, 1))
% 	new1 =>  
%      1     5     9    14
%      2     6    10    15
%      3     7    11    16
%      4     8    12    -1
% 
%[new2] = sortingSquare(students2, 3)
%isequal(sortingSquare(students2, 3), sortingSquare(students2, 3))
% 	new2 =>  
%      1     6    14    25    -1
%      2     7    15    -1    -1
%      3     8    19    -1    -1
%      4     9    20    -1    -1
%      5    10    24    -1    -1
% 
% [new3] = sortingSquare(students3, 6)
%isequal(sortingSquare(students3, 6), sortingSquare(students3, 6))
% 	new3 =>  
%     -1    -1    -1    -1    -1    -1
%     -1    -1    -1    -1    -1    -1
%     -1    -1    -1    -1    -1    -1
%     -1    -1    -1    -1    -1    -1
%     -1    -1    -1    -1    -1    -1
%     -1    -1    -1    -1    -1    -1
% 
% [new4] = sortingSquare(students4, 0)
%isequal(sortingSquare(students4, 0), sortingSquare(students4, 0))
% 	new4 =>  
%      1     8    15    22    29    36    43
%      2     9    16    23    30    37    44
%      3    10    17    24    31    38    45
%      4    11    18    25    32    39    46
%      5    12    19    26    33    40    47
%      6    13    20    27    34    41    48
%      7    14    21    28    35    42    49
%
%--------------------------------------------------------------------------------
%% Function Name: spellCheck
%
% Test Cases:
% [out1] = spellCheck(['QCDN'; 'FLKI'; 'JHGM'; 'EOPB'])
%isequal(spellCheck(['QCDN'; 'FLKI'; 'JHGM'; 'EOPB']), spellCheck_soln(['QCDN'; 'FLKI'; 'JHGM'; 'EOPB']))
% 	out1 =>    1
% 
% [out1] = spellCheck(['RTE','AQO','MNP','DSX'])
%isequal(spellCheck(['RTE','AQO','MNP','DSX']), spellCheck_soln(['RTE','AQO','MNP','DSX']))
% 	out1 =>    0
% 
% [out1] = spellCheck('A')
%isequal(spellCheck('A'), spellCheck_soln('A'))
% 	out1 =>    1
%

%%TESTING WITH RUBRIC
load('spellCheck_rubrica.mat')
a = isequal(spellCheck(in1), spellCheck_soln(in1))
b = isequal(spellCheck(in2), spellCheck_soln(in2))
in3
c = spellCheck(in3)
d = spellCheck_soln(in3)
%--------------------------------------------------------------------------------
%% Function Name: hippogriffCase
%
% Test Cases:
% [str1] = hippogriffCase('I can''t believe you make me deal with this 1 hippogriff!!')
% 	str1 => With This  HippogriffI Cant Believe You Make Me Deal 
% 
%[str2] = hippogriffCase('  Buckbeak the the HIPPOGRIFF is being terribly annoying!!  ')
% 	str2 => The The Hippogriff Is Being Terribly Annoying    Buckbeak 
% 
% [str3] = hippogriffCase('Draco HATES Hippogriffs  & he would absolutlely LOVE to start an ant-HIppogriff society!!')
% 	str3 => Start An Anthippogriff SocietyDraco Hates Hippogriffs   He Would Absolutlely Love To 
%
%--------------------------------------------------------------------------------
%% Function Name: puzzleBox
%
% Setup:
%	load jumbledRowsCols.mat
%
% Test Cases:
% [out1] = puzzleBox(jumbled1, rows1, cols1)
% 	out1 => Value too large to display. Value should match that of the solution function.
% 
% [out1] = puzzleBox(jumbled2, rows2, cols2)
% 	out1 => Value too large to display. Value should match that of the solution function.
% 
% [out1] = puzzleBox(jumbled3, rows3, cols3)
% 	out1 =>  
%                         rB.                       
%                        ,@@S                       
%                        5@A@:                      
%                       :@#M@X                      
%                       h@&h5@;                     
%                      r@rSA,A@.                    
%                     ,@h i@ ;@s                    
%                     S@: 5@  9@,                   
%                    :@5  5@  :@S                   
%                    9@,  5M   S@:                  
%                   r@r   5B   ,@3                  
%                  ,@&    5A    r@r                 
%                  S@;    2A     H@.                
%                 :@5     2&     ;@s                
%                 3@,     X&      3@,               
%                r@s  .;Sh@@#3s:  ,@2               
%               .@A .i@@@3AB2h@@@; s@;              
%               i@;:@@i,  XG  .:2@3s@h              
%              :@H3@2.    XG     :@@&@r             
%              3@H@r      XG       2@H@.            
%             ;@&@r       XG        X@@i            
%            .@M@S        XG        .A@@:           
%            i@M@.        XG         ;@@X           
%           ,@A@r         XG          2@@;          
%           X@@@.         XG          :@@G          
%          ;@X@2          XG          .@#@r         
%         .@&:@r          XG           3@A@,        
%         s@:.@;          XG           29;@S        
%        ,@3 ,@;          XG           S@ i@:       
%        2@: ,@;          XG           5@ .@3       
%       ;@i  .@r          XG           h3  s@;      
%      .A@.   H2          XG          .@s  .#M.     
%      s@;    i@.         Xh          :@:   ;@s     
%     ,@3     ,@r         Xh          2@     X@,    
%     5@:      3@.        Xh         :@r     ,@S    
%    ;@i       :@i        X9         H@.      S@:   
%    A@.        r@r       39        2@:       .@h   
%   r@r          S@r      33       5@;         r@r  
%  ,@h            i@5.    33     :@@;           A@. 
%  5@:             ;@@i,  33  .:2@&,            ;@i 
% ;@S               ,S@@AXBAS3@@@r               5@,
% G@9XXXXXXXXXXX2222i5AM@@@@@@@MhiiSiiiiiiiiiiiSiX@X
% @#@@@@@@@@@@@@@@@@@@@@#M@@BM#@@@@@@@@@@@@@@@@@@@B@
%
