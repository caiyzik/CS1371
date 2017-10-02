function result = highSchoolMusical(dreamU, scores, song, selfie)
    w_scores = [scores(1)*1.5, scores(2)*1.25, scores(3)];
    sum_scores = sum(w_scores);
    accepted = true;
    if sum_scores >= 26 || strcmp(dreamU, 'u(sic)ga')
        if contains(song, 'Nickelback') || selfie == true
            accepted = false;
        end
    else
        if strcmpi(dreamU, 'Georgia Tech') || strcmpi(dreamU, 'Georgia Institute of Technology') || strcmpi(dreamU, 'GT') %and no nickelback song
            accepted = true;
        elseif strcmpi(song,'Start of Something new')
            accepted = true;
        end
    end
    
    if accepted == true
        result = 'Welcome to High School Musical!';
    elseif accepted == false
        result = 'We regret to inform you that you did not make the musical.';
    end
end