function artist = findMyJam(options, friends, top5, stats)

    % %prep for the logic to make ifs easier to read
    options = [',' options ','];
    friends = [',' friends ','];
    top5 = [',' top5 ','];

    opt_ndx= strfind(options, ',') + 1;
    options(opt_ndx(1:end-1));
    friend_ndx = strfind(friends, ',') + 1;
    top5_ndx = strfind(top5, ',') + 1;

    [vec, sort_ndx] = sort(stats(:,2)); %sorts 2nd column of stats
    stats = stats(sort_ndx(end:-1:1), :); %rearranges the array based on the sorted 2nd column

    artist1 = options(opt_ndx(1):opt_ndx(2)-2);
    artist2 = options(opt_ndx(2):opt_ndx(3)-2);

    %the actual logic
    if contains(friends, artist1) & contains(top5, artist1)
        artist = artist1
        z = 'z'
    elseif ~contains(friends,artist1)
        %find the rating of artist1 within the stats
        ndx = strfind(top5, artist1);
        a = strfind(top5,ndx);
        b = top5(top5_ndx(1:end-1));
        stats_ndx = strfind(b, a);
        rating = stats(stats_ndx,2);
        if rating > mean(stats(:,2))
            artist = artist1
            y = 'y'
        else
            artist = top5(top5_ndx(1):top5_ndx(2)-2)
            x = 'x'
        end
    else %if ~contains(top5, artist1)
        if contains(friends, artist2) & contains(top5, artist2)
            artist = artist2
            w = 'w'
        else
            artist = top5(top5_ndx(1):top5_ndx(2)-2)
            v = 'v'
        end
    %else
        %artist = artist1;
    end

    artist = [artist ' will ignite the party!'];
end

