%% function[exhibit] = calcPopularity(exhibit) 
%   Calculates the popularity of the exhibit and adds it to a new field
%   called 'popularity'.
%
%   Takes in a 1x1 structure and outputs the updated 1x1 structure with one
%   additional field. Must contain the fields 'people','time','rating'.
%   
%   EXAMPLE:
%       exhibitIn =  exhibit: 'Harambe'
%                    people: 50000000
%                    time: 24
%                    rating: 6
%
%       exhibitOut = exhibit: 'Harambe'
%                    people: 50000000
%                    time: 24
%                    rating: 6
%                    popularity: 7200000000