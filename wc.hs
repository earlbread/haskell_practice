-- wc.hs
-- Counts chracters, words and lines of input
main = interact wordCount
    where wordCount input = ((show (length (input))) ++ "\n" ++ (show (length (words input))) ++ "\n" ++  (show (length (lines input))) ++ "\n")
