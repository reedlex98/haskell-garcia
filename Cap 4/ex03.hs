module Terceiro where
    verificaPar :: Int -> Bool
    verificaPar x = x `mod` 2 == 0

    verificaImpar :: Int -> Bool
    verificaImpar x = x `mod` 2 /= 0

    filtraPares :: [Int] -> [Int]
    filtraPares = filter verificaPar

    filtraImpares :: [Int] -> [Int]
    filtraImpares = filter verificaImpar