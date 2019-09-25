module Quinto where
    dobroTiraQuatro :: [Int] -> [Int]
    dobroTiraQuatro n = filter (\x -> x `mod` 4 /= 0) $ map (2*) n