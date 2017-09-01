function [hundreds, tens, ones] = sepDigits(num)
   tensAndOnes = mod(num, 100);
   ones = mod(tensAndOnes, 10);
   tens = floor((tensAndOnes - ones)./10);
   hundreds = floor(num./100);
end