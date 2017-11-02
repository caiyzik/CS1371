function [sent] = area51(data, dists, days)
    %time - first row
    t = data(1,:);
    %velocity - second row
    v = data(2,:);
    
    %determine position cumtrapz()
    pos = cumtrapz(t, v);
    %determine acceleration diff()
    acc = diff(v)./diff(t);
    
    %use 3x1 subplots %connect all points with solid line
   
    %plot pos v time %blue * 
    subplot(3,1,1)
    title('Position vs. Time')
    xlabel('Time (s)')
    ylabel('Position (m)')
    plot(t, pos, 'b*-');
    axis([0, max(t), 0, max(pos)])
    
    %plot velocity v time %green +
    subplot(3,1,2)
    title('Velocity vs. Time')
    xlabel('Time (s)')
    ylabel('Velocity (m/s)')
    plot(t, v, 'g+-')
    axis([0, max(t), 0, max(v)])
    
    %plot accelation v time %add [0,0] %red diamonds
    subplot(3,1,3)
    title('Acceleration vs. Time')
    xlabel('Time (s)')
    ylabel('Acceleration (m/s^2)')
    plot(t, [0, acc], 'rd-')
    axis([0, max(t), 0, max(acc)])
    
    %check craft destination
    
    %convert days to sec
    days = days*24*60*60;
    
    %find new distance
    new_dist = interp1(t, pos, days, 'linear', 'extrap');
    new_dist = new_dist/1000; %convert distance to km
    
    if new_dist >= dists(1) & new_dist <= dists(2)
        sent = sprintf('You''ve found the alien planet! It is located %0.2f km away.', new_dist);
    else
        sent = sprintf('This craft did not come from the known alien planet. Better luck next time!');
    end

end