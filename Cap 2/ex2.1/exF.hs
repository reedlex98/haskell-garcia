module F where
    genList :: [Int]
    genList = [x | x <- [1..64], mod x 9 == 1]