function[p_badApple, p_badOrange] = applesAndOranges(apples, oranges, goodApples, goodOranges)
    badApple = apples - goodApples;
    badOrange = oranges - goodOranges;
    
    %probabilty calculation is incorrect
    p_badApple = (round((badApple./apples), 3)).*100;
    p_badOrange = (round((badOrange./oranges), 3)).*100;
end