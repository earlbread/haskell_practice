-- myDrop.hs
-- Has the same behavior with drop

myDrop :: Int -> [a] -> [a]
myDrop n xs = if n <= 0 || null xs
                 then xs
                 else myDrop (n - 1) (tail xs)
