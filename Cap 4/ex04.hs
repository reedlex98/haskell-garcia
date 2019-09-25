module Quarto where
    verificaPrimo :: Int -> Bool
    verificaPrimo n = length [x | x <- [1 .. n], n `mod` x == 0] == 2

    filtraPrimos :: [Int] -> [Int]
    filtraPrimos = filter verificaPrimo