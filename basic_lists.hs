-- Define a list
numbers1 = [1,2,3,4,5]
numbers2 = [4,5,6,7,8]

greeting1 = "Hello"
greeting2 = "World"

-- List concatenation
numbers = numbers1 ++ numbers2 -- [1,2,3,4,5,4,5,6,7,8]
greeting = greeting1 ++ greeting2 -- "HelloWorld"

-- Insert element to list

l = 1:[2,3,4,5] -- [1,2,3,4,5]

-- Get an element from a list

ns1 = [1,2,3,4,5] !! 0 -- 1

-- Range

ns2 = [1..5] -- [1,2,3,4,5]
alphabets = ['a'..'z'] -- "abcdefghijklmnopqrstuvwxyz"

ns3 = [1,3..10] -- [1,3,5,7,9]
ns4 = [5,4..1] -- [5,4,3,2,1]
ns5 = take 5 [17,34..] -- [17,34,51,68,85]

-- List comprehension

ns6 = [x*2 | x <- [1..5]] -- [2,4,6,8,10]
ns7 = [x | x <- [50..100], x `mod` 17 == 0] -- [51,68,85]

bigSmall xs = [if x > 10 then "Big" else "Small" | x <- xs]
bs = bigSmall [1,10,100] -- ["Small","Small","Big"]
