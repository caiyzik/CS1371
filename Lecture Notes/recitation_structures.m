recitation structure notes
getfield()
setfield() *same thing as rmfield
struct()
rmfield() you HAVE to set it back to the variable or it wont do anything

[st.age] this will give you all the ages if they were doubles
{st.name} will give you things that aren't doubles

fieldnames(struct) gives you all the fieldnames

to convert a structure into a cell array
{st.name}; {st.age}; and so on

storing an array in a structure
st.array = [1,2,3,4] is this a structure or a structure array?
the length is one!

note for cell arrays
you need to convert to doubles and THEN sort or do math
