function explain = wakeMeUp(wake_up_time, first_class, transport)
%convert both times to minutes
wake = str2time(wake_up_time);
class = str2time(first_class);

if wake >= class
    explain = sprintf('You overslept and missed your first class. Better set your alarm next time!');
else
    switch transport 
        case {'skateboarding'}
            if wake + 3 <= class
               explain = sprintf('You rush and make it to class just in time by %s. Nice!', transport);
            else
                explain = sprintf('You rush to get to class by %s, but sadly you are still late. Better set your alarm next time!', transport);
            end
        case {'walking'}
            if wake + 10 <= class
                explain = sprintf('You rush and make it to class just in time by %s. Nice!', transport);
            else
                explain = sprintf('You rush to get to class by %s, but sadly you are still late. Better set your alarm next time!', transport);
            end
        case {'stinger bus'}
            if wake + 15 <= class
                explain = sprintf('You rush and make it to class just in time by %s. Nice!', transport);
            else 
                explain = sprintf('You rush to get to class by %s, but sadly you are still late. Better set your alarm next time!', transport);
            end
    end
end
%if you oversleep
%display 'You overslept and missed your first class. Better set your alarm next time!'
%if you didn't oversleep
% switch transport
%'skateboarding' minutes = 3

end

function minutes = str2time(time)
[hr, m] = strtok(time, ':');
minutes = str2num(m(2:end)) + (str2num(hr) .* 60);
end