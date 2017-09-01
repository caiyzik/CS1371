function [slice_per_p slice_left] = pizzaParty(attendees, pizzas)
    %calculates the number of pizza slices each attendee gets and the number of
    %slices of pizza left after each attendee gets their portion
    slice_per_p = floor((pizzas.*8)./attendees);
    slice_left = (pizzas.*8) - (slice_per_p.*attendees);
end