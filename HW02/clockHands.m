function [updated_hour, updated_min] = clockHands(current_h, current_m, update)
    %Convert current time to minutes
    total_time = (current_h.*60) + current_m;
    %do the update
    updated_time = 720 + total_time + update;
    %convert back to not-military time
    updated_hour = floor(updated_time./60);
    updated_min = mod(updated_time, 60);

end