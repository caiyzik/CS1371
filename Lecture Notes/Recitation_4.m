recitation notes
announcements
test 1 two weeks from now; use practice tests to review
four sections: multiple choice, small code, tracing functions, long code

strok review
str = 'Hello world goodbye'
[word rest] = strtok(str, ' ')
word = 'Hello ' rest of the string
strtok keeps the delimiter in the first string and deletes delimiters at the beginning
the delimiter can be a longer list of characters and it will look for the delimiters individually

logicals
logical operators: ==, ~=, >, <, =<,>=
[true true false false] & [t f t f] compares each element to each other

find if elements in vector are even
mod(vec,2)== 0

masks: logical vector of where something is true or false
vec = [2 7 5 8 3]
log1 = vec > 5 = [F T F T F]

values = vec(log1) = [7 8] (can be applied to any vector of same length)

understand the difference between numerical and logical indexing
you want to use numerical indexing when you know what positions you want

how can you tell where in a char vector its uppercase
mask = str >= 'A' & str <= 'Z' you can do the double or the letter
mask2 = str >='a' & str <= 'z'

convert to upper
str(mask2) = upper(str(mask2) both masks need ot be the same; you can put oen thing into all holes or you can do the exact amount

if you didn't have the upper function you can take advantage of the ascii values
    str(mask) - 'a' + 'A'
    
how would you do rebelCipher without mod

shift = 2
str = 'abcz'
str = char(str + shift)
mask = str > 'z' --> [0 0 0 1]
str(mask) = char(str(mask) - 26) need to convert back to a string since you're doing math on it

Questions
review of any and all
cumsum might be useful for lockSMITH
sort review
vec = [5 3 2 6]
[a, b] = sort(vec)
a = [2 3 5 6]
b = [3 2 1 4] useful if you want to sort something else in a similar way
str = 'abcd'
str = str(b)
str = 'cbad'



