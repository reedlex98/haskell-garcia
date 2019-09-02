module D where
    genList :: [Int]
    genList = [x | x <- [5,8..41], x /= 14, x/=23, x/= 35]
    