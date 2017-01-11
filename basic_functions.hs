-- A function
doubleMe x = x + x

-- Function call in function
doubleUs x y = doubleMe x + doubleMe y

-- If statement
doubleSmallNumber x = if x >= 100
                         then x
                         else x * 2


