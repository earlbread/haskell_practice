-- wc.hs
-- Counts lines of input
main = interact wordCount
    where wordCount input = (show (length (lines input)) ++ "\n")
