%%%
% File: Lect_12_Conditionals.m
%%%
%   ADMIN
%
%   Last Week Tonight meets Tonight 6pm Boggs B9
%     - so if you have that ghastly feeling that
%       you're falling behind ... be there!
%
%   Test next Wednesday
%   - covers any topic in a completed HW
%   - NOT conditionals or iteration
%   - you may use any aspect of MATLAB you want
%     unless the question specifically prohibits it
%   - BUT ... KISS reduces the possibility of being
%                           misunderstood
%
%%%
%   CONCEPT
%   - Code Block [instructions between blue words]
%   - Conditional Execution
%   -- deciding whether or not to run a code block
%
%%%
%   IMPLEMENTATION
%
%   today: if statements
%       general form:
%   if <logical expr> 
%           <do if true>
%   elseif <logical expr>
%           <do if true>
%   ...
%   else
%       <do if false>
%   end
grade = input('What grade? ');
if grade >= 70
    letter = 'S';
else
    letter = 'U';
end

%also
if grade >= 120 %& grade <=120
    error('typo?');
elseif grade >= 90
    letter = 'A'
elseif grade >= 80 %& grade >= 90 %you can also use a double &. Smith uses double because you'll find the double & in other languages
    letter = 'B';
elseif grade >= 70
    letter = 'C';
elseif grade >= 60
    letter = 'D';
elseif grade >= 0
    letter = 'F';
%else -- Don't do this! Use the else block to handle errors (such as if the user enters 888 or -99)
%    letter = 'F';
else 
    error('No you idiot... ');
end

fprintf('the grade %d earns a %s\n', grade, letter)
%
%   what happens if I give it a vector?
% MATLAB call all() on the vector you pass in and uses that to evaluate the
% if statments. 
%now run the code and enter in a vector.
%the fprintf function is getting feed too many arguments. So it calls the
%function multiple times and does conversions on the numbers
%   Be careful of the ordering of the tests
%   Use the debugger to ensure all cases work properly

%Clicker questions
%function a = function(b) %you can't use function here because the word
%'function' is already reserved for function declaration
%    end
%do functions end at least one parameter?
%  - No. A function is essentially a set of instructions contained in one
%  code block. You can have instructions without any inputs. Such as a
%  function that increments a variable that is only defined in the
%  function.

