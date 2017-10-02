%%%
% File: Lect_15_Iteration_while.m
%%%
%   ADMIN
%
%   Test Wednesday
%       bring a pencil
%       blank paper provided
%       back of the test is a reference sheet
%       ask questions
%
%   PRS - final test Friday
%       - you must register your device to have your input processed
%               see the announcement (need to be registered by next week Monday for extra credit)

%
%%%
%   CONCEPT:
%
%   - repeating a code block
%
%%%
%   IMPLEMENTATION
%
%   while loops
%       - repeat a code block a variable number of times
%       - break statement
%   EXAMPLES
%

% num = 1;
% while num ~= -1
%    % num = input('Gimme a num (-1 to quit): '); %uncomment this to run this
%    % block
%     if num ~= -1 %makes sure that 'the number is -1' is not displayed when you exit the loop
%         fprintf('the number is %d\n', num)
%     end
% end

str = 'now  is the time   ';

count = 0;
% %%%
% while ~isempty(str)
%     [token str] = strtok(str, ' ');
%     if ~isempty(token) %makes sure the end spaces are not counted as words
%         count = count + 1;
%     end
% end
% %%%%%%
fprintf('final count is %d\n', count)
%   repeating a number
%   counting words in a string
% repeating a calculation
OK = true;
while OK
    grade = input('What grade? ');
    if isempty(grade)
        OK = false;
    end
    oopsie = true;
    if grade >= 120
        %error(['is ' num2str(grade) ' a typo?']); %have to turn this into
        %a suggestion to change the input
        fprintf('%d is not a nice munber\n', grade) %But wait if you do this you have no way to get out of this!
        %You need a way to set OK to false
        oopsie = false;
    elseif grade >= 90
        letter = 'A';
    elseif grade >= 80
        letter = 'B';
    elseif grade >= 70
        letter = 'C';
    elseif grade >= 60
        letter = 'D'
    elseif grade >= 0
        letter = 'F';
    else
        %error('No, you idiot ...')
        fprintf('%d is not a nice munber\n', grade)
    end
    
    if ~oopsie
        fprintf('the grade %d earns a %s\n', grade, letter)
    end
end