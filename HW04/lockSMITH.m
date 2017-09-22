function[combo] = lockSMITH(potential, rotations, logicals)
potential = circshift(potential,1); %shifting so I can avoid indexing at zero
%find index values for numbers at rotations
ndx = cumsum(rotations);
%check to see if any indexs are 'out of bounds'
ndx = mod(ndx, length(potential)) + 1;
%correct rotations that wrap around
%ndx(mask) = mod(ndx(mask) + rotations(mask), length(potential))
%get vector of confirmed numbers
confirmed = potential(ndx);
combo = confirmed(logicals);
end