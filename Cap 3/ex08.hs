module Oitavo where
    retornaLista :: [Int] -> [Int]
    retornaLista x = reverse [ y | y <- x, odd y , y `mod` 7 == 0, y > 0]