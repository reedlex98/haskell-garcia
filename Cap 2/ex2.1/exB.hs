module B where
    genList :: [Int]
    genList = [x | x <- [1..39], x `mod` 4 /= 0]