function [str] = goLong(pos)
%goLong takes the coordinates of two players on a football field 
%and calculates the distance between the two players 
%and returns that distance as a string

%calculate distance between two players
d = sqrt((pos(1)-pos(3)).^2 + (pos(2)-pos(4)).^2);

%return formatted string
str = sprintf('(%.2f, %.2f) is %.2f units from (%.2f, %.2f)', pos(1), pos(2), d, pos(3), pos(4));
end