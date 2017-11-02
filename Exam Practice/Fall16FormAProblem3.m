vec = [2, 1, 3, 7, 1, 3, 7, 1, 4,1,3,7,1 9, 1, 3, 7, 1, 3, 7, 1];

count = 0;
check = false;
ct = 0;
prevnum = 0;

for num = vec
    if num == 1 && check == false
        check = true;
        ct = ct + 0.25;
    elseif num == 3 && ct == 0.25
        ct = ct + 0.25;
    elseif num == 7 && ct == 0.50
        ct = ct + 0.25;
        check = false;
    end
    
    prevnum = num;
    
    if check == true && ct == 1
        count = count + 1;
        ct = 0;
        if prevnum == 1
            ct = 0.25;
        end
    end
    
end

count