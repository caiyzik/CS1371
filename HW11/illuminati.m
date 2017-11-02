function illuminati(c, angle)
    %convert to radians
    theta = angle*(pi/180);
    
    %find the lengths of the sides of the triangle
    a = c.*sin(theta);
    b = c.*cos(theta);
   
    %plot the triangle and eye
    plot([0,b,0,0], [0,0,a,0], 'b')
    hold on
    plotEye(c, angle);
    axis('equal');
end