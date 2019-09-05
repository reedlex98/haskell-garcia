-- Tuplas
-- Elementos agrupados de tipos diferentes, tamanho fixo e finito
-- (True, 'K', "fatec") :: (Bool, Char, String)
-- :t (True, 'k', "fatec") 
-- funções 
-- fst (a,b)-> gera tupla de dois elementos
-- snd (a,b,c ... n)-> gera tupla de multiplos elementos



module Quarto where

soma :: (Int, Int) -> Int
soma (x,y) = x + y

cartas :: [(Char, [Char])]
cartas = [(numero, naipe) | numero <- "A234567890JQK" , naipe <- ["Paus","Copas","Espadas","Ouros"]]