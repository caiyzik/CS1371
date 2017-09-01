function [updated_hour, updated_min] = clockHands(curr_hour, curr_min, mins)
    hours = floor(mins./60);
    new_min = rem(mins, 60);
    
    updated_hour = curr_hour + hours;
    updated_min = curr_min + new_min;
end