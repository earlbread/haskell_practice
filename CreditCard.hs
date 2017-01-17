{-# OPTIONS_GHC -Wall #-}

-- CreditCard.hs
-- Validate credit card numbers

-- Indicates whether an Integer could be a valid credit card number
validate :: Integer -> Bool
validate n = (sumDigits (doubleEveryOther (toDigits n))) `mod` 10 == 0

-- Calculates the sum of all digits.
-- sumDigits [16,7,12,5] = 1 + 6 + 7 + 1 + 2 + 5 = 22
sumDigits :: [Integer] -> Integer
sumDigits ns = sum (map (\xs -> sum (toDigits xs)) ns)

-- Doubles every other number beginning from the right
-- doubleEveryOther [8,7,6,5] == [16,7,12,5]
-- doubleEveryOther [1,2,3] == [1,4,3]
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther ns
    | length ns == 1 = ns
    | otherwise = reverse (doubleEveryOtherFromLeft (reverse ns))

doubleEveryOtherFromLeft :: [Integer] -> [Integer]
doubleEveryOtherFromLeft [] = []
doubleEveryOtherFromLeft ns
    | length ns == 1 = ns
    | otherwise = (head ns) : ((head (tail ns)) * 2) : doubleEveryOtherFromLeft (drop 2 ns)

-- Converts positive Integers to a list of digits.
-- toDigits 1234 == [1,2,3,4]
-- toDigits 0 == []
-- toDigits (-17) == []
toDigits :: Integer -> [Integer]
toDigits n = reverse (toDigitsRev n)

-- Converts positive Integers to a reversed list of digits.
-- toDigits 1234 == [4,3,2,1]
-- toDigits 0 == []
-- toDigits (-17) == []
toDigitsRev :: Integer -> [Integer]
toDigitsRev n
    | n > 0 = (n `mod` 10) : toDigitsRev (n `div` 10)
    | otherwise = []
