function showit(fh, title, it)
% show details of anything
% usage: showit(fh, title, it)
%   fh is any file handle or 1 for cmd win
%   title - the title
%   it is what you want to see
fprintf(fh, title);
    wottizzit_h(fh, it, '', true)
end


function wottizzit_h(fh, it, spaces, doNewLine)
% A function to nicely display whatever you give it
    
    type = class(it);
    sz = size(it);
    sz = sort(sz,'descend');
    if length(sz) > 1 && any(sz(2:end) > 1)
        show_multi(fh, it, spaces);
        doNewLine = true;
    else
        switch type
            case 'struct'
                if length(it) == 1
                    names = fieldnames(it);
                    for nm = 1:length(names)
                        name = names{nm};
                        fprintf(fh, '%s%20s: ', spaces, name);
                        if isstruct(it.(name))
                            fprintf(fh, '\n');
                        end
                        wottizzit_h(fh, it.(name),[spaces '    '],true);
                    end
                    fprintf(fh, '\n');
                else
                    for item = it
                        wottizzit_h(fh, item, '', false);
                    end
                end
            case 'char'
                fprintf(fh, '%s''%s'' ', '', it);
            case 'logical'
                if length(it) == 1
                    if it
                        fprintf(fh, 'true ');
                    else
                        fprintf(fh, 'false ');
                    end
                else
                    fprintf(fh, '[ ');
                    for ndx = 1:length(it)
                        wottizzit_h(fh, it(ndx),'', false)
                    end
                    fprintf(fh, '] ');
                end
            case 'double'
                if length(it) == 1
                    fprintf(fh, '%s ', commas(it));
                else
                    fprintf(fh, '%s[ ', spaces);
                    for ndx = 1:length(it)
                        wottizzit_h(fh, it(ndx),'', false)
                    end
                    fprintf(fh, '] ');
                end
            case 'cell'
                fprintf(fh, '%s{ ', spaces);
                for ndx = 1:length(it)
                    wottizzit_h(fh, it{ndx}, '', false)
                end
                fprintf(fh, '} ');

        end
    end
    if doNewLine
        fprintf(fh, '\n');
    end
end

function show_multi(fh, it, spaces)
    sz = size(it);
    fprintf(fh, '%s[ ', spaces)
    for dim = sz(1:end-1)
        fprintf(fh, '%d*', dim)
    end
    fprintf(fh, '%d %s] ', sz(end), class(it))
end


function str = commas(it)
    neg = it < 0;
    if neg
        it = -it;
    end
    str = sprintf('%d', ceil(it));
    str = addCommas(str);
    if neg
        str = ['-' str];
    end
end

function str = addCommas(str)
    if length(str) > 3
        str = [addCommas(str(1:(end-3))) ',' str((end-2):end)];
    end
end
