%% checkPlots compares the plot output of student and solution functions for equivalance
%
%   checkPlots(funcName, funcInputs ... )
%
%   Inputs:
%       (char) funcName: The name of the function you wish to check, as a
%           string (do NOT include '_soln')
%       (variable) funcInputs: The remaining inputs to this function are the
%           inputs that you would normally pass into the function that you
%           are checking
%
%   Example:
%       If you have a function called "testFunc" and the following test case:
%
%           testFunc(30, true, {'cats', 'dogs'})
%
%       Then to check the plot produced by "testFunc" against the solution
%       function "testFunc_soln" for this test case you would run:
%
%           checkPlots('testFunc', 30, true, {'cats', 'dogs'})
%
%   Note:
%   If your function's output plot does not match the output plot of the
%   solution, the places where it is different will show up in a new
%   window.