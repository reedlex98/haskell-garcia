module TwoDotFour where
    stringLength :: [String] -> [Int]
    stringLength strls = [ length x | x <- strls, length x `mod` 2 /= 0]