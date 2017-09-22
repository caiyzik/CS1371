function [encoded_str] = rebelCipher(str, key)
%convert string to upper case
str2 = upper(str);
%convert string to ASCII
numbers = double(str2);
%store shift
key_shift = mod((key./abs(key)) * mod(abs(key), 90), 26);
%store positive shift
pos_shift = mod(key_shift, 26);
%shift based on encryption key
b = numbers + key_shift;
%b = mod(a, 90) %after you mod 90 what is left is the 
b(b<65) = b(b<65) + 26;
b(b>90) = b(b>90) - 26;
%add positive shift to beginning of message
encoded_str = [num2str(abs(pos_shift)), char(b)];
end