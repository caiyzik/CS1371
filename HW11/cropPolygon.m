function cropPolygon(lengths, angles)
    
    %initialize the angle and length to be used in the loop
    
    
    %initialize polygon vertice vectors
    x_vec = [];
    y_vec = [];
    th = angles(1);
    %iterate through lengths
    for ndx = 1:length(lengths)
        
        len = lengths(ndx);
        
        %initialize rotation matrix
        mat = [cosd(th) , - sind(th); sind(th), cosd(th)];
        
        %rotate <length, 0> to angle
        %if ndx ~= length(lengths)+1
        rot = mat * [len; 0];
        %end
        x = rot(1);
        y = rot(2);
        
        x_vec = [x_vec x];
        y_vec = [y_vec y];
        
        if ndx < length(lengths)
            th = th + angles(ndx+1);
            len = len + lengths(ndx+1);
        end
    end
    
    addx = x_vec(1);
    addy = y_vec(1);
    
    x_vec = [x_vec x_vec(1)] %- addx 
    y_vec = [y_vec y_vec(1)] %+ addy
    plot(x_vec, y_vec, 'g+-')
    plot(x_vec(1:3), y_vec(1:3), 'k*--')
    
    hold on
%    plot([0, 4, 0, -8, -12, -8, 0],[0, 6.928, 13.856, 13.8556, 6.928, 0, 0], 'k*--')
    axis('equal')
end