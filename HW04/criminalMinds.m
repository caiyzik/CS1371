function [lying] = criminalMinds(sus1, sus2, sus3, sus4)
%CANNOT USE ISEQUAL OR ISEQUALN
%only one suspect is the criminal

test1 = all(sus1 == sus2 | sus1 == sus3 | sus1 == sus4);
test2 = all(sus2 == sus1 | sus2 == sus3 | sus2 == sus4);
test3 = all(sus3 == sus1 | sus3 == sus2 | sus3 == sus4);
test4 = all(sus4 == sus1 | sus4 == sus2 | sus4 == sus3);

tests = [test1 test2 test3 test4];
test5 = find(tests == 0);
%so now we find the test that is false. it could be sus1 or the index of where tests is false plus 1 
%need to test if sus1 is a liar
%suspects2 = suspects()
lying = sprintf('Suspect #%0.0f is lying.', test5);

end