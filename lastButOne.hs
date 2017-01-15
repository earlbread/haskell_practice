-- lastButOne.hs
-- Returns the element before the last

lastButOne :: [a] -> a
lastButOne xs = xs !! ((length xs) - 2)

