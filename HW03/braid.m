function [three_str] = braid(str1, str2, str3)
    %create a vector with the same elements of str1, str2, and str3
    %combined
    vec = [str1, str2, str3];
    
    %replace every thrid element with those of the different vectors
    %use negative indexing to reverse the string
    vec(end: -3: 1) = str1;
    vec(end-1: -3: 1) = str2;
    vec(end-2: -3: 1) = str3;
    
    %assign output variable to final string
    three_str = vec;
    
end