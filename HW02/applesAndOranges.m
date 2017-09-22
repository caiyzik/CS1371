function[p_badApple, p_badOrange] = applesAndOranges(apples, oranges, goodApples, goodOranges)
    badApple = apples - goodApples;
    badOrange = oranges - goodOranges;
    
    %probabilty calculation is incorrect
    p_badApple = round((badApple./(apples+oranges)),4).*100;
    p_badOrange = round((badOrange./(oranges+apples)),4).*100;