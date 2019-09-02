-- List Comprehension
-- [expr | a <- lista1, b <- lista2, c <- lista3, filtro1, filtro2, filtron]
-- Geramos uma lista a partir de expr iterando nas variáveis a, b, ... z, mantendo as variáveis que passam em todos os filtros (true em todos os filtros)
-- [x+1 | x <- [1..5]] = [2,3,4,5,6] (Parecido com o map do Javascript)
-- [x+5 | x <- [1..6], x /= 3, x /= 4] = [6,7,10,11] (Parecido com o map do Filter)


module Terceiro where

divisores::Int -> [Int]
divisores n = [x | x <- [1..n], mod n x == 0]

ehPrimo :: Int -> Bool
ehPrimo n = length(divisores n)==2

primosAteMil :: [Int]
primosAteMil = [x | x <- [1..1000], ehPrimo x] 