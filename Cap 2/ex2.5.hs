module TwoDotFive where
    headRewritten :: [Int] -> Int 
    headRewritten arr = (last . reverse) arr