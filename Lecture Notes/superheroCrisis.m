function [last_city, thanos_defeated] = superheroCrisis(init_vil, first_wave, second_wave)
    %create vectors representing the cities and limits of superheros
    cities = ['N', 'A', 'W', 'L', 'D'];
    limits = [25, 40, 15, 35, 50];
    
    %first wave
    survive1 = (init_vil + first_wave) <= limits;
    vil1 = round((init_vil(survive1) + first_wave(survive1))./2);
    cities = cities(survive1);
    
    %second wave
    survive2 = (vil1 + second_wave) <= limits(survive1);
    vil2 = round((vil1(surrive2)+second_wave(surrive2))./(3/2));
    last_city = cities(survive2);
    
    %thanos
    thanos_defeated = vil2 < (limits(survive2)./2);
    
    
end