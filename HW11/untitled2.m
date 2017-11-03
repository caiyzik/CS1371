%     prev_x = 0;
%     prev_y = 0;
%     x_vec = [];
%     y_vec = [];
%     %lengths = [lengths];
%     angles = [0 angles];
%     for ndx = 2:length(lengths)
%         th = angles(ndx);
%         %vec = [0 length(ndx)] 
%         
%         rot = [cos(th) , - sin(th); sin(th), cos(th)] * [lengths(ndx);0];
%         
%         x = rot(1);
%         y = rot(2);
%         
%         
%         
%         %x = lengths(ndx)*cosd(angles(ndx));
%         %y = lengths(ndx)*sind(angles(ndx));
%         
%         %prev_x = prev_x + length(ndx);
%         %prev_y = prev_y + sind(th);
%         
%         newx = x+prev_x;
%         newy = y+prev_y;
%         
%         rot2 = [cos(90-th) , - sin(90-th); sin(90-th), cos(90-th)] * [newx;newy];
%         
%         x_vec = [x_vec, rot2(1)];
%         y_vec = [y_vec, rot2(2)];
%     end
%     
%     plot(x_vec, y_vec)