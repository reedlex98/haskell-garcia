module G where
    genList :: [Int]
    genList = [x | x <- [1..30], mod x 2 == 0, x /=6,x /= 14, x /= 26]