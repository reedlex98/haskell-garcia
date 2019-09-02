module A where
    genList :: [Int]
    genList = [11 ^ x | x <- [0..6]]
    