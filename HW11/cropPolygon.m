function cropPolygon(lengths, angles)
    %initialize polygon vertice vectors
    x_vec = [];
    y_vec = [];
    th = angles(1);  %initialize the angle and length to be used in the loop
    %iterate through lengths
    for ndx = 1:length(lengths)
        
        len = lengths(ndx);
        
        %initialize rotation matrix
        mat = [cosd(th) , - sind(th); sind(th), cosd(th)];
        
        %rotate <length, 0> to angle
       
        rot = mat * [len; 0];
  
        x = rot(1);
        y = rot(2);
        
        x_vec = [x_vec x];
        y_vec = [y_vec y];
        
        if ndx < length(lengths)
            th = th + angles(ndx+1);
            len = len + lengths(ndx+1);
        end
    end
    lastx = x_vec(1);
    lasty = y_vec(1);
    x_vec = [cumsum(x_vec)];%x_vec(1)]; 
    y_vec = [cumsum(y_vec)];%y_vec(1)];
    plot([0 x_vec], [0 y_vec], 'k-')
    hold on

    axis('equal')
    axis('off')
end