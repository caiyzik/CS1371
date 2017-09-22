function [contour] = compAIRContour(air_p_curr, air_p_GT)
    %create vectors containing the differences between the elements in both
    %input vectors
    vec1 = diff(air_p_curr);
    vec2 = diff(air_p_GT);
    
    %create a vector telling you if the difference is above or below zero
    v1 = vec1 > 0;
    v2 = vec2 > 0;
    
    %if both air currents have the same increasing/decreasing logical
    %vectors then they contour
    contour = isequal(v1, v2);
end