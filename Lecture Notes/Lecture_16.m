% Lecture 16
% Announcements 
% - Grade replacements: Final exam score will replace your test average
% - Last day of PRS testing today
% 
% Concept 
% Low Level File I/O

str = '111\n222\n333\n';
text_example = sprintf(str);
double(text_example); %text is stored like this: text, some new line thing, text, some new line thing, so on
name = 'mercy.txt'; %located in text files in DMS Code Access on T-Square
location = '../text_files'; %specifies location of the file. Useful if your file is in the wrong directory
%real_name = [location name] %use this line if your file is in the wrong
%directory
fh = fopen(name, 'r');
if fh < 0
    error('bad file name');
end

%line1 = fgets(fh)
%double(line); %notice that you get 13 and 10 at the end. This is the end of line marker within the text
%if you don't want the end of line marker in your string....
line2 = fgetl(fh); %... use fgetl
double(line2);

%when you call fgets or fgetl twice it will give you the second line. It
%will do this until it gets to the end of the file. When it gets to the end
%it will return -1 everytime you call it (Instead of erroring)

line = '';
while ischar(line)
    line = fgetl(fh);
    if ischar(line)
        fprintf('%s\n', line)
    end
end
