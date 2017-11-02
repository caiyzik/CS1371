function [sentence] = predator(animals, events)
    months = 0;
    for ndx = 1:length(events)
        switch events{ndx}
            case 'Meteor Strike'
                intim = [animals.Intimidation];
                cute = [animals.Cuteness];
                score = intim - cute;
                [~, jdx] = min(score);
                mask = score == score(jdx);
                mask = find(mask == true);
                vec = [animals(mask(1)).SwimmingAbility, animals(mask(1)).SurvivalSkill, animals(mask(1)).Cuteness, animals(mask(1)).Intimidation, animals(mask(1)).Wisdom];
                m = sum(vec);
                for n = mask
                    vec = [animals(n).SwimmingAbility, animals(n).SurvivalSkill, animals(n).Cuteness, animals(n).Intimidation, animals(n).Wisdom];
                    a = sum(vec);
                    if a < m
                        m = a;
                        jdx = n;
                    end
                end
                [~, jdx] = min(vec);
                
                animals(jdx) = [];
                %make sure to handle if multiple animals have the same min
            case 'Flood'
                swim = [animals.SwimmingAbility];
                survive = [animals.SurvivalSkill];
                score = swim + survive;
                [~, jdx] = min(score);
                mask = score == score(jdx);
                mask = find(mask == true);
                vec = [animals(mask(1)).SwimmingAbility, animals(mask(1)).SurvivalSkill, animals(mask(1)).Cuteness, animals(mask(1)).Intimidation, animals(mask(1)).Wisdom];
                m = sum(vec);
                for n = mask
                    vec = [animals(n).SwimmingAbility, animals(n).SurvivalSkill, animals(n).Cuteness, animals(n).Intimidation, animals(n).Wisdom];
                    a = sum(vec);
                    if a < m
                        m = a;
                        jdx = n;
                    end
                end
                [~, jdx] = min(vec);
                animals(jdx) = [];
            case 'Famine'
                predators = {animals.Predator};
                species = {animals.Species};
                alive = intersect(predators, species);
                for jdx = 1:length(alive)
                    mask = strcmp(predators, alive(jdx));
                    animals(mask) = [];
                end
                
            case 'Volcanic Eruption'
                survive = [animals.SurvivalSkill];
                mask = survive < mean(survive);
                animals(mask) = [];
        end
        if length(animals) >= 1
            months = months + 1;
        elseif length(animals) == 0
            months = ndx;
        end
    end
    
    if length(animals) > 1
        sentence = sprintf('%d animals survived %d grueling months.', length(animals), months);
    elseif length(animals) == 0
        sentence = sprintf('%d months were too much for the animals, and none of them survived.', months);
    else
        sentence = sprintf('After %d months of observation, only %s, a %s, survived.',months, animals.Name, animals.Species); 
    end
    
end