function [square] = sortingSquare(org_square, n)
%find students to be taken out
b = fliplr(org_square);
b(1:n,1:n) = -1;
c = fliplr(b);
c = c(:);
c(c == -1) = [];
c = sort(c);
c = [c' ones(1, n.*n) * -1];

%[~, c] = size(org_square)
%taken = org_square(1:n,end:end-(c-n));
%taken_vec = taken(:)
%turn the square into a column vector and sort it
%vec = sort(org_square(:));
%find positions of vec where the students removed are

%ndx = vec == taken_vec;
%replace with ghosts
%vec(ndx) = -1;
%return the sorted square
dim = length(org_square(1,:));
square = reshape(c, [dim, dim]);
end