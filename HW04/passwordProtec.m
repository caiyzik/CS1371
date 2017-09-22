function [bool] = passwordProtec(str)
    bool1 = length(str) >= 8; %check length
    ascii = double(str); %convert string to ascii values
    bool2 = ascii > 65 & ascii < 90; %check uppercase
    bool3 = ascii > 97 & ascii < 122; %check lowercase
    bool4 = ascii > 48 & ascii < 57; %check numbers
    %check for other characters
    bool5 = ~((ascii > 65 & ascii < 90) | (ascii > 97 & ascii < 122) | (ascii > 48 & ascii < 57));
    %check to see if all criteria are satisfied
    bool = any(bool1) & any(bool2) & any(bool3) & any(bool4) & any(bool5);
end